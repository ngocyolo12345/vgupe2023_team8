import { Injectable } from '@angular/core';
import {
  HttpRequest,
  HttpHandler,
  HttpEvent,
  HttpInterceptor,
  HttpErrorResponse
} from '@angular/common/http';
import { Observable, tap, throwError } from 'rxjs';
import { Router } from '@angular/router';

@Injectable()
export class AuthInterceptor implements HttpInterceptor {

  constructor(private router: Router) {}

  intercept(request: HttpRequest<unknown>, next: HttpHandler): Observable<HttpEvent<unknown>> {
   
    const localToken = localStorage.getItem('token');
    request = request.clone({headers: request.headers.set('Authorization', 'bearer ' + localToken)});
    return next.handle(request).pipe( tap(() => {},
      (err: any) => {
      if (err instanceof HttpErrorResponse) {
        if (err.status === 401 && request.url.indexOf("UserInfo.php") < 0 && request.url.indexOf("adminAPI.php") < 0) {
        // console.log(err)
        alert("Need to login")
        this.router.navigateByUrl('/login');
        }
        throw err;
      }
    }));
  }
}
