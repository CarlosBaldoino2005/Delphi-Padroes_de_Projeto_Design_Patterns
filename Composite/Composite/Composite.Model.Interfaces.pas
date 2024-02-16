unit Composite.Model.Interfaces;

interface

type
  iItens = interface;

  iVenda = interface
    ['{0025F3E2-02A1-4B97-A556-CF944E8587D7}']
    function Add(Value : iItens) : iVenda;
    function Total : Currency;
  end;

  iItens = interface
    ['{4CB5A9CE-8519-4D0A-97EC-A0B1C0C1E2B6}']
    function Quantidade(Value : Currency) : iItens;
    function Preco(Value : Currency) : iItens;
    function Total : Currency;
  end;

implementation

end.
