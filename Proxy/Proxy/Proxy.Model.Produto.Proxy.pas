unit Proxy.Model.Produto.Proxy;

interface

uses Proxy.Model.Interfaces, System.Generics.Collections, Proxy.Model.Produto;

Type
  TModelProdutoProxy = class(TInterfacedObject, iProxyProduto)
    private
      FList : TDictionary<integer, iModelProduto>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iProxyProduto;
      function ConsultaId(Value : Integer) : iModelProduto;
  end;

implementation

uses
  System.SysUtils;

{ TModelProdutoProxy }

function TModelProdutoProxy.ConsultaId(Value: Integer): iModelProduto;
begin
  if not FList.TryGetValue(Value, Result) then
  begin
    Result := TModelProduto.New.ConsultaID(Value);
    FList.Add(Value, Result);
  end;
end;

constructor TModelProdutoProxy.Create;
begin
  FList := TDictionary<integer, iModelProduto>.Create;
end;

destructor TModelProdutoProxy.Destroy;
begin
  FreeAndNil(FList);
  inherited;
end;

class function TModelProdutoProxy.New: iProxyProduto;
begin
  Result := Self.Create;
end;

end.
