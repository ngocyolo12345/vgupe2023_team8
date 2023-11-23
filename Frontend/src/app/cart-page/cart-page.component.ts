import { Component, OnInit } from '@angular/core';
import { CartService } from '../Service/cart/cart.service';
import { ShoesService } from '../Service/shoes/shoes.service';
import { Cart } from '../shared/models/Cart';
import { CartItem } from '../shared/models/CartItem';
import { from, of } from 'rxjs';
import { LoginService } from '../Service/login/login.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-cart-page',
  templateUrl: './cart-page.component.html',
  styleUrls: ['./cart-page.component.css'],
})
export class CartPageComponent implements OnInit {
  cart!: Cart;
  grandTotal:number = 0;

  check: boolean;
  constructor(
    private cartService: CartService,
    public loginService: LoginService,
    private router: Router
  ) {
    // from(this.cartService.getFromSS()).subscribe(()=>{
    //   this.setCart()
    // });
  }
  ngOnInit() {
    
    from(this.cartService.getFromSS()).subscribe(()=>{
      this.setCart();
      this.grandTotal = this.cartService.getTotalPrice();
    });
    
    // this.grandTotal = this.cartService.getTotalPrice();
    this.loginService.isLogIn$.subscribe(data=>{
      this.check = data;
    }
    )

  }

  removeFromCart(cartItem: CartItem) {
    this.cartService.removeFromCart(cartItem.shoes.id);
    this.setCart();
  }

  changeQuantity(cartItem: CartItem, quantityInString: string) {
    const quantity = parseInt(quantityInString);
    this.cartService.changeQuantity(cartItem.shoes.id, quantity);
    this.setCart();
  }

  setCart() {
    this.cart = this.cartService.getCart();
    console.log(this.cart)
  }

  saveToSS(cartItem: any) {
    this.cartService.saveToSS(cartItem);
  }

  async getFromSS() {
    await this.cartService.getFromSS();
  }


  getTotalPrice(){
    this.cartService.getTotalPrice();
  }

  Check(){
      this.router.navigateByUrl('/checkout')
  }
}
