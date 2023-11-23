import { Component } from '@angular/core';
import { THUMBNAILS } from './thumbnail.impl';
import { Thumbnail } from './thumbnail.interface';
import { Router } from '@angular/router';

@Component({
  selector: 'app-thumbnail',
  templateUrl: './thumbnail.component.html',
  styleUrls: ['./thumbnail.component.css']
})
export class ThumbnailComponent {
  thumbnails=THUMBNAILS;
  constructor(private router:Router){}
  MovePage(id: string)
  {

    if(id === 'Product')
    {
        this.router.navigateByUrl('/AllProduct');
    }
    else if (id === "Men" || id ==="Women")
    {
      if(id === "Men")
        id = "male";
      else id = "female";
      this.router.navigateByUrl('AllProduct/gender/' + id.toLowerCase());
    }
    else{
      if(id === "Sneaker" || id === "Adidas")
      {
        id.toLowerCase();
      }
        
      this.router.navigateByUrl('AllProduct/tag/' + id);
    }
  }
}
