import { Component } from '@angular/core';
import { ShoesService } from '../Service/shoes/shoes.service';
import { ActivatedRoute, Router } from '@angular/router';
import { CartService } from '../Service/cart/cart.service';
import { LoginService } from '../Service/login/login.service';
import { FormGroup, FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  username: string ="";
  password: string ="";
  formGroup : FormGroup | undefined;
  constructor(private shoesService: ShoesService, private route: ActivatedRoute,private cartService: CartService, private router:Router, private login: LoginService) { 
    
  }
  onSubmit(){
    
  if(this.username && this.password){
    console.log(this.username)
    console.log(this.password)
    this.login.loginAPI(this.username, this.password);
  }
  else{
    alert("Username or password has not been filled")
    return;
  }
  }
  
}
