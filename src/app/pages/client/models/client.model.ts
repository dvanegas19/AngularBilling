export class client {
    IdClient?: number;
    Names: string;
    LastName: string;
    Document?: string;
    RegisterDate?: string;
    BirthDate?: string;
    DocumentType?: documentType;
    IdDocumentType?: number;
}

export class documentType{
    IdDocument:number;
    Description:string
}

export class httpClient {

    status:number
    error:string
    response: client[]

}