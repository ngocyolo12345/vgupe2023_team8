import { Component } from '@angular/core';
import { LoginService } from '../Service/login/login.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-register-page',
  templateUrl: './register-page.component.html',
  styleUrls: ['./register-page.component.css']
})
export class RegisterPageComponent {
    firstname: string ="";
    lastname: string ="";
    username: string ="";
    password: string="";
    repassword:string ="";

    constructor(private registerService: LoginService, private router: Router){}

    onRegister(){
      if(this.firstname && this.lastname && this.username && this.username && this.repassword)
      {
        if(this.password != this.repassword)
        {
          alert("password and repassword does not match")
          return;
        }
        else{
          this.registerService.registerAPI(this.username, this.password, this.firstname, this.lastname);
          
        }
      }
      else{
        alert("there something has not filled in yet")
        return;
      }
    }
}
