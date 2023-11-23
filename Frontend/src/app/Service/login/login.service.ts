import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { map, mergeMap, switchMap, tap } from 'rxjs/operators';
import { BASE_API_URL } from '../constant';
import { BehaviorSubject, Observable, of } from 'rxjs';
import { ActivatedRoute, Router } from '@angular/router';
@Injectable({
  providedIn: 'root'
})
export class LoginService {
  private _isLogIn$ = new BehaviorSubject<boolean>(false);
  isLogIn$:Observable<boolean> = this._isLogIn$.asObservable();

  private _admin = new BehaviorSubject<boolean>(false);
  ToAdmin: Observable<boolean> = this._admin.asObservable();
  constructor(private http: HttpClient, private router: Router) {
   }
  
  loginAPI(username: string , password: string){
    const data = {username, password};
   
    this.http.post(`${BASE_API_URL}/LoginAPI.php`, data).subscribe((response:any)=>{
      this._isLogIn$.next(true);
      console.log(response);
      // console.log(localStorage.getItem('token'));
       if(response['token'] == "Invalid token" )
       {
        alert("Username or password is wrong")
        this._isLogIn$.next(false)
       }
       else if(response['username'] == "admin"){
          alert("Welcome admin");
          this.router.navigateByUrl('');
          this._admin.next(true);
          
       }
       else{
        this.router.navigateByUrl('');
        this._isLogIn$.next(true);
        this._admin.next(false);
        
       }
      
    })
    
  }
  registerAPI(username: string, password:string, firstname: string, lastname: string){
    const data={username, password, firstname, lastname};
    this.http.post(`${BASE_API_URL}/RegisterAPI.php`, data).subscribe((response)=>{
      console.log(response);

      if(response['token'] != "Username is already used" )
       {
        this.router.navigateByUrl('/login');
        alert('success')
        
       }
       else{
        alert("Username is already used")
       }
    })
      
  }

  profileAPI(){
    return this.http.get<Profile[]>(`${BASE_API_URL}/UserProfile.php`)
  }
  userInfoAPI(){
    return this.http.get<Profile[]>(`${BASE_API_URL}/UserInfo.php`).pipe(map(value =>{
      this._isLogIn$.next(true)
      return value;
    },err => {
      this._isLogIn$.next(false)
    }));
  }
  AdminAPI(){
    return this.http.get(`${BASE_API_URL}/adminAPI.php`).pipe(map(value =>{
      this._admin.next(true)
      return value;
    },err => {
      this._admin.next(false)
    }));
  }


  logoutAPI(){
    this.http.get(`${BASE_API_URL}/Logout.php`).subscribe(()=>{
      this.router.navigateByUrl('/login');
    });
    this._admin.next(false)
    this._isLogIn$.next(false)
  }
  orderAPI(){
    return this.http.get<order[]>(`${BASE_API_URL}/Userorder.php`)
  }
}

export interface Profile{
  Password: string;
  Username: string;
  firstname: string;
  lastname: string;
}
export class order{
  cart_id: number;
  user_name: string;
  total_price: number;

  get price():number{
    return this.total_price;
  }
}
