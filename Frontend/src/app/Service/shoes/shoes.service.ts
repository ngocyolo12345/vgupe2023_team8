import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { filter, map, Observable } from 'rxjs';
import { Shoes } from 'src/app/shared/models/Shoes';
import { Tag } from 'src/app/shared/models/Tag';
import { BASE_API_URL } from '../constant';

@Injectable({
  providedIn: 'root'
})
export class ShoesService {
  Allshoes: Shoes[] = [];
  getAllShoesBySearchTerm(searchTerm:string) : Observable <Shoes[]>{
    console.log(searchTerm)
    return this.http.get<Shoes[]>(`${BASE_API_URL}/SearchProduct.php?searchTerm=${searchTerm}`);
  };

  constructor(private http: HttpClient) { }
  getAll(): Observable <Shoes[]>{
    
    return this.http.get<Shoes[]>( `${BASE_API_URL}/getALL.php`);
  }
  getAllShoesByTag(tag: string): Observable <Shoes[]>{
 
    if( tag === "All")
    {
      return this.getAll();
    }
    else{
      return this.http.get<Shoes[]>(`${BASE_API_URL}/BrandProduct.php?tag=${tag}`)
    }
  }
  getAllShoesByGender(gender: string): Observable <Shoes[]>{
    console.log(gender)
    return this.http.get<Shoes[]>(`${BASE_API_URL}/GenderProduct.php?gender=${gender}`);
  }
  getAllTag(): Tag[]{
    return [
      {name: 'All'},
      {name: 'Sneaker'},
      {name: 'Adidas'},
      {name: 'Nike'},
    ]
  }
  getShoesByID(id:number): Observable <Shoes[]>{
    
    return this.http.get<Shoes[]>(`${BASE_API_URL}/ViewProduct2.php?id=${id}`);
  }
  getAllShoesByBrand(brands: string[], gender: string | undefined){

    let uriParams = brands.map(x=> `brands[]=${x}`).join("&");
    if (gender){
      uriParams += `&gender=${gender}`
    }
    return this.http.get<Shoes[]>(`${BASE_API_URL}/GenderBrands.php?${uriParams}`);

  }
}
