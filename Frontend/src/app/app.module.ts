import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { Route, RouterModule } from '@angular/router';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HelloworldComponent } from './hello-world.component';
import { RegisterPageComponent } from './register-page/register-page.component';
import { HomeComponent } from './home/home.component';
import { SearchComponent } from './search/search.component';
import { TagsComponent } from './tags/tags.component';
import { ViewComponent } from './view/view.component';
import { CartPageComponent } from './cart-page/cart-page.component';
import { NotFoundPageComponent } from './not-found-page/not-found-page.component';
import { HTTP_INTERCEPTORS, HttpClientModule} from '@angular/common/http'
import { ProductsComponent } from './products/products.component';
import { HeaderComponent } from './header/header.component';
import { ThumbnailComponent } from './thumbnail/thumbnail.component';
import { NavbarComponent } from './navbar/navbar.component';
import { FooterComponent } from './footer/footer.component';
import { NgxPaginationModule } from 'ngx-pagination';
import { LoginComponent } from './login/login.component';
import { ProfileComponent } from './profile/profile.component';
import { AuthInterceptor } from './Service/login/auth.interceptor';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { CommonModule } from '@angular/common';

import { CheckoutPageComponent } from './checkout-page/checkout-page.component';
import { AdminComponent } from './admin/admin.component';



@NgModule({
  declarations: [
    AppComponent,
    HelloworldComponent,
    RegisterPageComponent,
    HomeComponent,
    SearchComponent,
    TagsComponent,
    ViewComponent,
    CartPageComponent,
    ProductsComponent,
    NotFoundPageComponent,
    HeaderComponent,
    ThumbnailComponent,
    NavbarComponent,
    FooterComponent,
    LoginComponent,
    ProfileComponent,
    CheckoutPageComponent,
    AdminComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    NgxPaginationModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    BrowserAnimationsModule,
    CommonModule,  
  ],
  providers: [ 
    {
       provide: HTTP_INTERCEPTORS, useClass: AuthInterceptor,
       multi: true
     }
    ],
  bootstrap: [AppComponent]
})
export class AppModule { }
