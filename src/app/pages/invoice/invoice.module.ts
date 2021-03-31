import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DxSelectBoxModule,
  DxTextAreaModule,
  DxFormModule,
  DxDataGridModule,
  DxButtonModule ,
  DxTextBoxModule,
  DxDateBoxModule} from 'devextreme-angular';
import { InvoiceComponent} from './invoice.component';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule,ReactiveFormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';
import { InvoiceRoutingModule} from './invoice-routing.module';

@NgModule({
  declarations: [InvoiceComponent],
  imports: [
    CommonModule,
    DxSelectBoxModule,
    DxTextAreaModule,
    DxFormModule,
    DxDataGridModule,
    DxButtonModule ,
    DxTextBoxModule,
    DxDateBoxModule,
    FormsModule,
    ReactiveFormsModule,
    InvoiceRoutingModule
    //RouterModule.forChild(routes)
  ]
  /*,
  exports: [
    InvoiceComponent
  ]*/
})
export class InvoiceModule { }