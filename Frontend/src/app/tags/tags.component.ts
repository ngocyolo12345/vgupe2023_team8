import { Component, OnInit, EventEmitter, Output } from '@angular/core';
import { Tag } from '../shared/models/Tag';
import { ShoesService } from '../Service/shoes/shoes.service';
import { Router } from '@angular/router';
@Component({
  selector: 'app-tags',
  templateUrl: './tags.component.html',
  styleUrls: ['./tags.component.css']
})
export class TagsComponent {
    // @Output() tagSelected = new EventEmitter<string>();
    tags:Tag[] = [];
    constructor(private shoesService:ShoesService, private router:Router){}
    ngOnInit():void{
        this.tags = this.shoesService.getAllTag();
    }
    // onTagSelected(tag:string){
    //   // Emit the selected tag
    //   this.tagSelected.emit(tag);
    // }
    ButtonTag(tag: string){
      this.router.navigateByUrl('/AllProduct/tag/' + tag);
    }
}
