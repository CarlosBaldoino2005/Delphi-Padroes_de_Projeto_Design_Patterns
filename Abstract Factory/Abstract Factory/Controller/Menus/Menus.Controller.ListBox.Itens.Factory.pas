unit Menus.Controller.ListBox.Itens.Factory;

interface

uses Menus.Controller.ListBox.Interfaces, Menus.Controller.ListBox.Itens.Default;

type
  TControllerListBoxItensFactory = class(TInterfacedObject, iControllerListBoxItensFactory)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItensFactory;
    function Default : iControllerListBoxItensDefault;
    function Produto : iControllerListBoxItemForm;
    function Cliente : iControllerListBoxItemForm;
    function Fornecedor : iControllerListBoxItemForm;
    function Insert : iControllerListBoxItemCRUD;
    function Update : iControllerListBoxItemCRUD;
    function Delete : iControllerListBoxItemCRUD;
  end;

implementation

{ TControllerListBoxItensFactory }

uses Menus.Controller.ListBox.Itens.Produto,
  Menus.Controller.ListBox.Itens.Cliente, Menus.Controller.ListBox.Itens.Insert,
  Menus.Controller.ListBox.Itens.Delete, Menus.Controller.ListBox.Itens.Update,
  Menus.Controller.ListBox.Itens.Fornecedor;

function TControllerListBoxItensFactory.Cliente: iControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensCliente.New;
end;

constructor TControllerListBoxItensFactory.Create;
begin

end;

function TControllerListBoxItensFactory.Default: iControllerListBoxItensDefault;
begin
  Result := TControllerListBoxItensDefault.New;
end;

function TControllerListBoxItensFactory.Delete: iControllerListBoxItemCRUD;
begin
  Result := TControllerListBoxItensDelete.New;
end;

destructor TControllerListBoxItensFactory.Destroy;
begin

  inherited;
end;

function TControllerListBoxItensFactory.Fornecedor: iControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensFornecedor.New;
end;

function TControllerListBoxItensFactory.Insert: iControllerListBoxItemCRUD;
begin
  Result := TControllerListBoxItensInsert.New;
end;

class function TControllerListBoxItensFactory.New: iControllerListBoxItensFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensFactory.Produto: iControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensProduto.New;
end;

function TControllerListBoxItensFactory.Update: iControllerListBoxItemCRUD;
begin
    Result := TControllerListBoxItensUpdate.New;
end;

end.
