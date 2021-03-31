import { NgModule, Component, ViewChild, enableProdMode, AfterViewInit, OnInit } from '@angular/core';
import { ClientService } from './service/client.service';
import { DxFormComponent } from 'devextreme-angular';
import {  client} from './models/client.model';
import {FormBuilder, FormGroup, Validators, FormControl} from '@angular/forms';
import { custom } from 'devextreme/ui/dialog';
@Component({
  selector: 'app-client',
  templateUrl: './client.component.html',
  styleUrls: ['./client.component.scss']
})
export class ClientComponent implements AfterViewInit {

firstFormGroup: FormGroup;
documentType : any;
rules: Object;
listClient: client[];

constructor(private serviceClient: ClientService, private _formBuilder: FormBuilder) {
  serviceClient.getClient().subscribe(result=>{

      this.listClient= result
    });
    this.documentType = serviceClient.getDocumentType();
    this.rules = { 'X': /[02-9]/ };
}

 ngOnInit() {
    this.firstFormGroup = this._formBuilder.group({
      names: ['', Validators.compose([Validators.required, Validators.pattern('[A-Z].*')])],
      lastName: ['', Validators.compose([Validators.required, Validators.pattern('[A-Z].*')])],
      document: ['', Validators.compose([Validators.required, Validators.pattern('[0-9].*')])],   
      documentType: ['', Validators.compose([Validators.required, Validators.pattern('[A-Z].*')])],
      birthDay:  ['', Validators.compose([Validators.required])]    
    })
 }

 refreshClient(){
  this.serviceClient.getClient().subscribe(result=>{

    this.listClient= result
  });

 }

 newClient(event){

  let getData:client = {
    IdClient:6,
    Names: this.firstFormGroup.get('names').value,
    LastName : this.firstFormGroup.get('lastName').value,
    BirthDate: this.firstFormGroup.get('birthDay').value,
    Document: this.firstFormGroup.get('document').value,
    DocumentType: {
      IdDocument:1,
      Description: this.firstFormGroup.get('documentType').value
    }
    
  }
  this.serviceClient.postClient(getData).subscribe(result=>{
    this.alertLocal("Mensaje de alerta","Registro creado con exito!");
    this.refreshClient();
    event.preventDefault();
  });
 }

ngAfterViewInit() {
   


} 

events: Array<string> = [];

logEvent(request, event ) {

  if(event ==='updated' && request.changes != null ){
    this.serviceClient.putClient(request.changes[0].data); 
  }else{
    this.alertLocal('Clientes', 'Valide que todas la opciones esten seleccionadas')
  }
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

clearEvents() {
  this.events = [];
}






}
