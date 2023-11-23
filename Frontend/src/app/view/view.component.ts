import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Route, Router } from '@angular/router';
import { CartService } from '../Service/cart/cart.service';
import { ShoesService } from '../Service/shoes/shoes.service';
import { Shoes } from '../shared/models/Shoes';

@Component({
  selector: 'app-view',
  templateUrl: './view.component.html',
  styleUrls: ['./view.component.css']
})
export class ViewComponent {
    shoes:Shoes | undefined;
    imageData :(string|undefined)[] = [];
    selectedImage: string|undefined;
    products: Shoes[] = [];
    p: number = 1;
    constructor(private route: Router,private cartService: CartService,private activatedRoute: ActivatedRoute, private shoesService: ShoesService){
      activatedRoute.params.subscribe((params)=>
      {
        if(params['id'])
        {
          shoesService.getShoesByID(params['id']).subscribe(data => {
            this.shoes = data[0]
            this.imageData = [ this.shoes.imageURL, this.shoes.image1,this.shoes.image2,this.shoes.image3,this.shoes.image4]
            this.selectedImage = this.imageData[0];
            
            if(this.shoes)
          {
            this.shoesService.getAllShoesByGender(this.shoes?.gender).subscribe(data2=> this.products = data2);;
          }
          })
        }
      }
      )
      
    }
    ngOnInit(){
      // if(this.shoes)
      //   this.shoesService.getAllShoesByGender(this.shoes?.gender).subscribe(data=> this.products = data);
    }
    addToCart(){
      if (this.shoes){
        this.cartService.addToCart(this.shoes);
        // this.route.navigateByUrl('/cart-page');
        const totalItem = this.cartService.getCart().items.length;
      this.cartService.UpdateTotalItem(totalItem);
      this.cartService.saveToSS(this.shoes);
      }
      
    }
    
}
