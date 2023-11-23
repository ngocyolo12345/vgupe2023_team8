import { Component, OnInit } from '@angular/core';
import { CartService } from '../Service/cart/cart.service';
import { Cart } from '../shared/models/Cart';
import { LoginService } from '../Service/login/login.service';
// import { CookieService } from 'ngx-cookie-service';
import { Router } from '@angular/router';
@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent {
  public totalItem :number = 0;
  check : boolean = false;
  admin: boolean = false;
    constructor(private cartService : CartService, public loginService: LoginService, private router: Router){}
    ngOnInit(): void{
      console.log(this.totalItem);
      this.cartService.totalItem$.subscribe(totalItem => this.totalItem = totalItem);

      this.loginService.isLogIn$.subscribe(data=>{
        this.check = data;
      })

      this.loginService.ToAdmin.subscribe(data =>{
        this.admin = data
      })

      this.loginService.AdminAPI().subscribe(data =>{
        this.admin = !!data
      })
      this.loginService.userInfoAPI().subscribe(data => {
        this.check = !!data;
      })
    }
    logout(){
      this.loginService.logoutAPI()
    }
}
