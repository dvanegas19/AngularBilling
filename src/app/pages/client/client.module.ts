import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DxSelectBoxModule,
  DxTextAreaModule,
  DxFormModule,
  DxDataGridModule,
  DxButtonModule ,
  DxTextBoxModule,
  DxDateBoxModule} from 'devextreme-angular';
import { ClientComponent} from './client.component';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule,ReactiveFormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';
import { ClientRoutingModule } from './client-routing.module';

@NgModule({
  declarations: [ClientComponent],
  imports: [
    CommonModule,
    DxSelectBoxModule,
    DxTextAreaModule,
    DxFormModule,
    DxDataGridModule,
    DxButtonModule,
    HttpClientModule,
    DxTextBoxModule,
    DxDateBoxModule,
    FormsModule,
    ReactiveFormsModule,
    ClientRoutingModule,
    RouterModule
   // RouterModule.forChild(routes),
  ]
  /*,
  exports: [
    ClientComponent
  ]*/
})
export class ClientModule { }