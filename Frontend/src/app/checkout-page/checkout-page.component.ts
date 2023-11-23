import { Component } from '@angular/core';
import { Cart } from '../shared/models/Cart';
import { CartService } from '../Service/cart/cart.service';
import { Router } from '@angular/router';
import { BehaviorSubject, catchError, Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { LoginService } from '../Service/login/login.service';
type Check = {
  Validation: string;
}

@Component({
  selector: 'app-checkout-page',
  templateUrl: './checkout-page.component.html',
  styleUrls: ['./checkout-page.component.css'],
})


export class CheckoutPageComponent {
  cart!: Cart;
  public totalItem: number = 0;
  shippingFee:number = 0;

  firstname: string;
  lastname:string;
  username: string
  constructor(private cartService: CartService, private router: Router, private http: HttpClient, private loginService: LoginService) {
    this.setCart();

    this.cartService.totalItem$.subscribe(
      (totalItem) => (this.totalItem = totalItem)
    );
    this.loginService.profileAPI().subscribe((x) => {
      console.log(x)
      const p = x[0];
      this.firstname = p.firstname;
      this.lastname = p.lastname;
      this.username = p.Username;
    console.log(this.firstname, this.lastname, this.username)})

  }


 
  setCart() {
    this.cart = this.cartService.getCart();
  }
 
  proceed(){
    this.cartService.proceed();
    alert("Thanks for shopping")
    
  }

  totalPrice():number{
    return this.cart.totalPrice;
  }
}
