import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CartPageComponent } from './cart-page/cart-page.component';
import { HomeComponent } from './home/home.component';
import { ViewComponent } from './view/view.component';
import { ProductsComponent } from './products/products.component';
import { LoginComponent } from './login/login.component';
import { RegisterPageComponent } from './register-page/register-page.component';
import { ProfileComponent } from './profile/profile.component';
import { CheckoutPageComponent } from './checkout-page/checkout-page.component';
import { AdminComponent } from './admin/admin.component';
const routes: Routes = [
  
  //{ path: 'AllProduct', component: HomeComponent},
  { path:'login', component: LoginComponent},
  { path: 'register', component: RegisterPageComponent},
  { path: '', component:ProductsComponent},
  { path: 'search/:searchTerm', component: HomeComponent },
  { path: 'tag/:tag', component: HomeComponent},
  { path: 'AllProduct', 
    children:[
      {path:'', component: HomeComponent},
      {path: 'tag/:tag', component: HomeComponent},
      {path: 'gender/:gender', component: HomeComponent},
      {path: 'gender/:gender/tag:tag', component: HomeComponent}
  ]
  },
  {path: 'view/:id', component: ViewComponent},
  {path: 'cart-page', component: CartPageComponent},
  {path: 'profile', component: ProfileComponent},
  {path: 'checkout', component: CheckoutPageComponent},
  {path: 'admin', component: AdminComponent}
  //{path: '**", component: PageNotFound"} insert Smitt dam 
];
@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
