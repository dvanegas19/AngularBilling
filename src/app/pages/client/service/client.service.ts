import { Injectable } from '@angular/core';
import { client, httpClient} from '../models/client.model';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from '../../../../environments/environment';
import { Observable } from 'rxjs';



@Injectable({
    providedIn: 'root',
  })
export class ClientService {

      reqHeader = new HttpHeaders({ 
        'Content-type': 'application/json'
     });

     documentType = [{item:1,value:'Cedula Ciudadania' },
    { item:2, value:'Tarjeta Identidad'},
    {item:3, value:'Cedula Extranjeria'} ]
    LastName:any;
    constructor(private httpClient: HttpClient)
    {}

    getClient(): Observable<client[]> {

        return this.httpClient.get<client[]>(`${environment.url}/client`,{ headers: this.reqHeader });
    }

    postClient(client: client): Observable<client> {
        
        return this.httpClient.post<client>(`${environment.url}/client`,client,{ headers: this.reqHeader });
    }

    putClient(client:client): Observable<httpClient> {

        return this.httpClient.put<httpClient>(`${environment.url}/client`,client,{ headers: this.reqHeader });
    }

    getDocumentType(){
        // Esta pendiente realizar este llamado desde el API
        let listDocument : any = [{Name: "Cedula Ciudadania", id:1},{Name: "Cedula Extranjeria", id:2},{Name: "Pasaporte", id:3}];
        
        return listDocument;
       
    }

}
