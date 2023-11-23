import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-not-found-page',
  templateUrl: './not-found-page.component.html',
  styleUrls: ['./not-found-page.component.css']
})
export class NotFoundPageComponent {
      @Input() visible: boolean = false;
      @Input() notFoundMessage: string = "Nothing Found!";
      @Input() resetLinkText: string ="Back to menu";
      @Input() resetLinkRoute: string ="/";
      constructor(){}
      ngOnInit():void{
        
      }
}
