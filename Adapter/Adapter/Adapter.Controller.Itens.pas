unit Adapter.Controller.Itens;

interface

uses Adapter.Model.Interfaces, System.Generics.Collections, Adapter.Model.Itens;

Type
  TControllerItens = class(TInterfacedObject, iControllerItens)
  private
    FModelItem : iModelItens;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerItens;
    function Add(Value: TItens): iControllerItens;
    function Itens: TList<TItens>;
  end;

implementation

uses
  System.SysUtils;

{ TControllerItens }

function TControllerItens.Add(Value: TItens): iControllerItens;
begin
  FModelItem.Add(
    TModelItens.New
      .SetProduto(Value.Produto)
      .SetValor(Value.Valor)
  );
end;

constructor TControllerItens.Create;
begin
  FModelItem := TModelItens.New;
end;

destructor TControllerItens.Destroy;
begin

  inherited;
end;

function TControllerItens.Itens: TList<TItens>;
var
  I: Integer;
  Item : TItens;
begin
  Result := TList<TItens>.Create;
  for I := 0 to Pred(FModelItem.Itens.Count) do
  begin
    Item.Produto := FModelItem.Itens[I].GetProduto;
    Item.Valor := FModelItem.Itens[I].GetValor;
    Result.Add(Item);
  end;
end;

class function TControllerItens.New: iControllerItens;
begin
  Result := Self.Create;
end;

end.
