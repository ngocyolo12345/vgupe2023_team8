import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Route, Router } from '@angular/router';
import { ShoesService } from '../Service/shoes/shoes.service';
import { Shoes } from '../shared/models/Shoes';
import { CartService } from '../Service/cart/cart.service';
import { LoginService } from '../Service/login/login.service';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.css']
})

export class ProductsComponent {
  products: Shoes[] = [];
  p:number = 1;
  check: boolean;
  
  // *ngIf="loginService.isLogIn$ | async"
  constructor(private shoesService: ShoesService, private route: ActivatedRoute,private cartService: CartService, 
    private router:Router, public loginService: LoginService) { 
    
  }
  ngOnInit():void {
    this.shoesService.getAll().subscribe(data => this.products = data);
    this.loginService.isLogIn$.subscribe(data=>{
      this.check = data;
    }
    )
    
    
  }
  addToCart(shoes:any){
    console.log(this.check)
    if(true)
    {
      if (shoes){
      this.cartService.addToCart(shoes);
      const totalItem = this.cartService.getCart().items.length;
      this.cartService.UpdateTotalItem(totalItem);
      this.cartService.saveToSS(shoes);
    }
    }
    else{
      this.router.navigateByUrl('/login');
    }
    
    
  }
}
