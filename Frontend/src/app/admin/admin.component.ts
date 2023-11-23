import { Component, ElementRef, OnInit, ViewChild, AfterViewInit } from '@angular/core';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.css']
})
export class AdminComponent implements AfterViewInit {
    

  constructor(){}
  @ViewChild("atag") atag: any;

  ngAfterViewInit():void{
    this.atag.nativeElement.click()
  }
}
