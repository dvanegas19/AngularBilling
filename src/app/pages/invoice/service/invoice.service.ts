import { Injectable } from '@angular/core';
import { httpInvoice, invoice} from '../models/invoice.model';
import { client, product} from '../models/product.model';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from '../../../../environments/environment';
import { Observable } from 'rxjs';
import { invoiceDetail } from '../models/invoicedetail.model';




@Injectable({
    providedIn: 'root',
  })
export class InvoiceService {
   
    reqHeader = new HttpHeaders({ 
        'Content-type': 'application/json'
     });
    constructor(private httpClient:HttpClient){}

    getInvoice() {
        return this.httpClient.get<invoice[]>(`${environment.url}/invoice`,{ headers: this.reqHeader });
    }

    postInvoice(invoice: invoice): Observable<httpInvoice> {
        return this.httpClient.post<httpInvoice>(`${environment.url}/invoice`,invoice,{ headers: this.reqHeader });
    }

    putInvoice(invoice:invoice): Observable<httpInvoice> {

        return this.httpClient.put<httpInvoice>(`${environment.url}/invoice`, invoice,{ headers: this.reqHeader });
    }

    getProduct(){
        return this.httpClient.get<product[]>(`${environment.url}/product`,{ headers: this.reqHeader })
    }

    postInvoiceDetail(invoiceDetails: invoiceDetail ){
        return this.httpClient.post<product[]>(`${environment.url}/invoicedetail`,invoiceDetail,{ headers: this.reqHeader })
    }


    getClient(): Observable<client[]> {

        return this.httpClient.get<client[]>(`${environment.url}/client`,{ headers: this.reqHeader });
    }
}
