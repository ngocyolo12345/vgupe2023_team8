import { Component,OnInit } from '@angular/core';
import { LoginService, Profile, order } from '../Service/login/login.service';
@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent {
    firstname: string;
    lastname: string;
    username: string;
    password: string;
    orders :order[] = []



    constructor(private loginService: LoginService){}

    ngOnInit():void {
    this.loginService.profileAPI().subscribe((x) => {
      console.log(x)
      const p = x[0];
      this.firstname = p.firstname;
      this.lastname = p.lastname;
      this.username = p.Username;
      console.log(this.firstname, this.lastname, this.username)

    }
    )
    this.loginService.orderAPI().subscribe((result) => {
      this.orders = result;
    })
    }
  
}


