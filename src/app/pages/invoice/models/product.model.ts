


export class product{

    IdProduct: number;
    Description?: string;
    Price?: number;
    Unit:number;
    IVA?: number;
    Activo?: boolean

}
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