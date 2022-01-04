unit ModuloRDW;

interface

uses
  System.SysUtils, System.Classes, uDWDatamodule, uDWAbout, uRESTDWServerEvents,
  uDWJSONObject, ServerUtils, uDWConsts, ClienteResource;

type
  TDmRDW = class(TServerMethodDataModule)

  DWServerEvents1: TDWServerEvents;
    procedure DWServerEvents1EventsclienteReplyEventByType(
      var Params: TDWParams; var Result: string;
      const RequestType: TRequestType; var StatusCode: Integer;
      RequestHeader: TStringList);
    procedure ServerMethodDataModuleCreate(Sender: TObject);
    procedure ServerMethodDataModuleDestroy(Sender: TObject);

  private
    { Private declarations }
    FClienteResource : TClienteResource;

  public
    { Public declarations }
  end;

var
  DmRDW: TDmRDW;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmRDW.DWServerEvents1EventsclienteReplyEventByType(
  var Params: TDWParams; var Result: string; const RequestType: TRequestType;
  var StatusCode: Integer; RequestHeader: TStringList);
begin
 case RequestType of

   rtGet    : begin
                if Assigned(Params.ItemsString['id']) then
                   Result := FClienteResource.GetById(Params.ItemsString['id'].AsInteger)
                else
                if Assigned(Params.ItemsString['nome']) then
                   Result := FClienteResource.GetByNomeJson(Params.ItemsString['nome'].AsString)
                else
                if Assigned(Params.ItemsString['email']) then
                  Result := FClienteResource.GetByEmailJson(Params.ItemsString['email'].AsString)
                else
                  Result := FClienteResource.GetAll;
              end;

   rtPost   : begin
                if Assigned(Params.ItemsString['undefined']) then
                  Result := FClienteResource.Post(Params.ItemsString['undefined'].AsString);

              end;

   rtPut    : begin
                if Assigned(Params.ItemsString['undefined']) then
                   Result := FClienteResource.Put(Params.ItemsString['undefined'].AsString);
              end;

   rtDelete : begin
                if Assigned(Params.ItemsString['id']) then
                   if FClienteResource.Delete(Params.ItemsString['id'].AsInteger) then
                      Result :='Cliente Deletado id: '+Params.ItemsString['id'].AsString
                   else
                      Result :='Erro ao deletar o Cliente id: '+Params.ItemsString['id'].AsString;
              end;

 end;

end;

procedure TDmRDW.ServerMethodDataModuleCreate(Sender: TObject);
begin
  FClienteResource := TClienteResource.Create;
end;

procedure TDmRDW.ServerMethodDataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(FClienteResource);
end;

end.
