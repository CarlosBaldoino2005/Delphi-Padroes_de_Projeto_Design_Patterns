unit Iterator.Model.Interfaces;

interface

uses
  System.Generics.Collections;

type
  iItens = interface;
  iIteratorItens = interface;

  iVenda = interface
  ['{4FEBCD6D-C819-4306-82E4-7A01A4BA4986}']
    function Total : Currency;
    function AddItens(Value : iItens) : iVenda;
    function Itens : iIteratorItens;
  end;

  iItens = interface
    ['{892B348F-B7EC-4CF9-9B1C-5F6F98582830}']
    function Preco(Value : Currency) : iItens;
    function Quantidade(Value : Currency) : iItens;
    function Total : Currency;
  end;

  iIteratorItens = interface
    ['{F58ADF29-83D8-402D-8121-F618CFAAC31E}']
    function hasNext : boolean;
    function Next : iItens;
    function AddList(Value : TList<iItens>) : iIteratorItens;
  end;



implementation

end.
