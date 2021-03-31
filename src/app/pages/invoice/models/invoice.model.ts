
export class invoice {
    IdInvoice?: number;
    RegistrationDate?: Date;
    Total: number;
    IVA: number;
    Client: client;
}

export class client{
        IdClient?: number;
    
}

export class httpInvoice {

    status:number
    error:string
    response: invoice[]

}
