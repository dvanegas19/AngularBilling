import { NgModule, Component, ViewChild, enableProdMode, AfterViewInit, OnInit } from '@angular/core';
import { InvoiceService } from './service/invoice.service';
import { DxFormComponent } from 'devextreme-angular';
import {FormBuilder, FormGroup, Validators, FormControl} from '@angular/forms';
import { custom } from 'devextreme/ui/dialog';
import { invoice} from './models/invoice.model';
import {invoiceDetail } from './models/invoicedetail.model';
import {product,client } from './models/product.model';

@Component({
  selector: 'app-invoice',
  templateUrl: './invoice.component.html',
  styleUrls: ['./invoice.component.scss']
})
export class InvoiceComponent implements AfterViewInit {


  firstFormGroup: FormGroup;
  listProduct: product[];
  listClient: client[];
  listInvoice: invoice[];
  listProductTemp: any=[];
  totalIva:number;
  constructor(private serviceInvoice: InvoiceService, private _formBuilder: FormBuilder) {
    serviceInvoice.getProduct().subscribe(result=>{  
      this.listProduct= result
    });
    serviceInvoice.getClient().subscribe(result=>{ 
      this.listClient= result
    });

    serviceInvoice.getInvoice().subscribe(result=>{ 
      
      this.listInvoice= result;
    });
      
  }
  
   ngOnInit() {
      this.firstFormGroup = this._formBuilder.group({
        Unit: ['', Validators.compose([Validators.required, Validators.pattern('[0-9].*')])],   
        selectProduct: ['', Validators.compose([Validators.required, Validators.pattern('[A-Z].*')])],
        selectClient: ['', Validators.compose([Validators.required, Validators.pattern('[A-Z].*')])]
      });
   }

   refreshInvoice(){

    this.serviceInvoice.getInvoice().subscribe(result=>{ 
      
      this.listInvoice= result;
    });
   }
  
  newProduct(){

    let description = this.listProduct.filter((x)=>x.IdProduct==this.firstFormGroup.get('selectProduct').value).map((v)=>{
      return  v.Description;
     }).toString();

     let price = this.listProduct.filter((x)=>x.IdProduct==this.firstFormGroup.get('selectProduct').value).map((v)=>{
      return  v.Price;
     }).toString();

     let IVA = this.listProduct.filter((x)=>x.IdProduct==this.firstFormGroup.get('selectProduct').value).map((v)=>{
      return  v.IVA;
     }).toString();



    let newProduct :product= {
      Unit: this.firstFormGroup.get('Unit').value,
      IdProduct: this.firstFormGroup.get('selectProduct').value,
      Description: description,
      Price: Number(price),
      IVA: ((Number(price)) * Number(IVA))/100 
    };

    this.totalIva +=  ((Number(price)) * Number(IVA))/100 ;
    this.listProductTemp.push(newProduct);
    this.firstFormGroup.get('selectProduct').setValue('');
    this.firstFormGroup.get('Unit').setValue('');
    this.firstFormGroup.get('selectClient').disabled;

  }

  saveInvoice(){

    let totalIVA = 0;
    let total=0;

    let newInvoice : invoice={
      Client: { IdClient:this.firstFormGroup.get('selectClient').value},
      IVA: this.listProductTemp.map(a => a.IVA).reduce(function(a, b)
      {
        return a + b;
      }),
      Total:this.listProductTemp.map(a => a.Price).reduce(function(a, b)
      {
        return a + b;
      }),
    };
    this.serviceInvoice.postInvoice(newInvoice).subscribe(id=>{
      this.listProductTemp.forEach(element => {
        let newInvoiceDetails : invoiceDetail={
          IdInvoice: Number(id),
          IdProduct: element.IdProduct,
          Unit: element.Unit,
        };
        this.serviceInvoice.postInvoiceDetail(newInvoiceDetails);
  
      });
      this.refreshInvoice();
    });  


    this.alertLocal("Mensaje de alerta","Factura almacenada con exito!");
  }
   
   
  ngAfterViewInit() {
     // this.myform.instance.validate();
  
  
  } 
  
  
  alertLocal(title, menssage){
  
    let myDialog = custom({
      title: title,
      messageHtml: "<b>"+menssage+"</b>",
      buttons: [{
          text: "Aceptar",
          onClick: (e) => {
             myDialog.hide();
          }
      }, 
      ]
  });
  myDialog.show();
  }
  
  

}
