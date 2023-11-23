import { Shoes } from "./Shoes";

export class CartItem{
    constructor(shoes:Shoes)
    {
        this.shoes= shoes;
        this.price;
    }
    shoes:Shoes;
    quantity:number = 1;
    get price():number{
        return this.shoes.price * this.quantity;
    }
}