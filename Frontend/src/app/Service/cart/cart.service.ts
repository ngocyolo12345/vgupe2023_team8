import { Injectable, Component } from '@angular/core';
import { Cart } from 'src/app/shared/models/Cart';
import { Shoes } from 'src/app/shared/models/Shoes';
import { CartItem } from 'src/app/shared/models/CartItem';
import { ShoesService } from '../shoes/shoes.service';
import { BehaviorSubject, catchError, lastValueFrom, Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { checkoutItem } from 'src/app/shared/models/checkoutItem';
import { BASE_API_URL } from '../constant';


type Check = {
  Validation: string;
}

@Injectable({
  providedIn: 'root',
})


export class CartService {
  private cart: Cart = new Cart();
  public num:number;
  checkoutList: checkoutItem[] = [];
  private cartSS: Cart = new Cart();
  shoes: Shoes | undefined;
  private totalItem = new BehaviorSubject<number>(0);


  totalItem$: Observable<number> = this.totalItem.asObservable();
  constructor(private http: HttpClient, private shoesService: ShoesService) { }
 

  addToCart(shoes: Shoes): void {
    let cartItem = this.cart.items.find((item) => item.shoes.id === shoes.id);
    if (cartItem) {
      
      return;
    }
    this.cart.items.push(new CartItem(shoes));
  }

    proceed() {
    
    const data_shoes = [];
    for(var i =0; i<this.cart.items.length; i++){
        const id = this.cart.items[i].shoes.id;
        const quantity = this.cart.items[i].quantity;
        const price = this.cart.items[i].price;
        const itemSHoes = {id, quantity, price};
        data_shoes.push(itemSHoes);
    }
    const total_price = this.cart.totalPrice;
    const item = {data_shoes, total_price};
    console.log(item);
    this.http.post(`${BASE_API_URL}/CheckOut.php`, item).subscribe((response)=>
      console.log(response),
      (error)=> console.log(error))

    sessionStorage.removeItem("cart");
    this.cart = new Cart();
    this.totalItem.next(0);
    
  }

  getTotalPrice() {
    let grandTotal = 0;
    this.cart.items.map((a: any) => {
      grandTotal += a.price;
      console.log(a.price);
    });
    console.log(grandTotal);
    return grandTotal;
  }

 

  removeFromCart(shoesId: number): void {
    this.cart.items = this.cart.items.filter(
      (item) => item.shoes.id != shoesId
    );
    let cartString = sessionStorage.getItem("cart");
    let cartItems= (JSON.parse(cartString) ?? [] )as number[];
    for (const shoeId of cartItems) {
      if (shoeId === shoesId){
        // delete 
        const num = cartItems.indexOf(shoeId);
        console.log(num);
        delete cartItems[num];
        
        console.log(cartItems)
        sessionStorage.setItem("cart", JSON.stringify(cartItems.filter((v,i,a) => a.indexOf(v) === i)))
      }
    }
  }

  changeQuantity(shoesId: number, quantity: number) {
    let cartItem = this.cart.items.find((item) => item.shoes.id === shoesId);
    if (!cartItem) return;
    cartItem.quantity = quantity;
  }

    getCart(): Cart {
    return this.cart;
  }

  UpdateTotalItem(totalItem: number): void {
    this.totalItem.next(totalItem);
  }

  saveToSS(shoes:Shoes) {
    let cartString = sessionStorage.getItem("cart");
    console.log(cartString)
    let cartItem = (JSON.parse(cartString) ?? [] )as number[]
    cartItem.push(shoes.id)
    sessionStorage.setItem("cart", JSON.stringify(cartItem.filter((v,i,a) => a.indexOf(v) === i)))
  }

  async getFromSS() {
    let cartString = sessionStorage.getItem("cart");
    let cartItems= (JSON.parse(cartString) ?? [] )as number[]
    for (const shoeId of cartItems) {
      if (this.cart.items.findIndex(x=>x.shoes.id === shoeId)<0){
        const shoe = await lastValueFrom(this.shoesService.getShoesByID(shoeId))
        const cartItem = new CartItem(shoe[0]);
        this.cart.items.push(cartItem);
      }
    }
  }
}
