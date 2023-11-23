import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Route, Router } from '@angular/router';
import { ShoesService } from '../Service/shoes/shoes.service';
import { Shoes } from '../shared/models/Shoes';
import { CartService } from '../Service/cart/cart.service';
import { Tag } from '../shared/models/Tag';
@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  shoeses: Shoes[] = [];
  tags:Tag[] = [];
  brands: String[] =["Sneaker", "Adidas", "Nike"];
  selectedBrands: string[] = [];
  gender: string|undefined;
 
  constructor(private shoesService: ShoesService, private route: ActivatedRoute,private cartService: CartService, private router:Router) { 
    
  }

  ngOnInit(): void {
    this.tags = this.shoesService.getAllTag();
    this.route.params.subscribe(params => {
      
      if (params['searchTerm']){
        this.shoesService.getAllShoesBySearchTerm(params['searchTerm']).subscribe(data => this.shoeses = data);
        
      }
      else if(params['tag'])
      {
         this.shoesService.getAllShoesByTag(params['tag']).subscribe(data => this.shoeses = data);
        

      }
      else if(params['gender'])
      {
        this.gender = params["gender"]
        this.shoesService.getAllShoesByGender(this.gender ?? "").subscribe(data => this.shoeses = data);
        console.log(this.shoeses)
      }
       else {
         this.shoesService.getAll().subscribe(data => this.shoeses = data);
       }
    })
    
  }
  addToCart(shoes:any){
    if (shoes){
      this.cartService.addToCart(shoes);
      const totalItem = this.cartService.getCart().items.length;
      this.cartService.UpdateTotalItem(totalItem);
      this.cartService.saveToSS(shoes);
    }
    
    
  }
  onBrandClick(event: Event){
    const checkbox = event.target as HTMLInputElement;
    console.log(event)
    if (checkbox.checked) {
      this.selectedBrands.push(checkbox.value);
    } else {
      const index = this.selectedBrands.indexOf(checkbox.value);
      if (index > -1) {
        this.selectedBrands.splice(index, 1);
      }
    }
    console.log(this.selectedBrands)

    //Filter the list of shoes based on the selected brands
    if(this.selectedBrands.length === 0)
    {
   
    
      this.shoesService.getAllShoesByGender(this.gender ?? "").subscribe(data => this.shoeses = data);
    }
    else{
      
      this.shoesService.getAllShoesByBrand(this.selectedBrands, this.gender)
    .subscribe(shoes => this.shoeses = shoes);
    }
    
  }
}
