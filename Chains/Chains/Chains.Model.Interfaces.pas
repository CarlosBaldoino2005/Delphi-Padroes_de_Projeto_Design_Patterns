unit Chains.Model.Interfaces;

interface

type
  iItem = interface;

  iResponsability = interface
    ['{26E2D681-EC34-4704-A06D-6BCEF3E2C1AD}']
    function NextResponsability(Value : iResponsability) : iResponsability;
    function Desconto(Value : Currency) : iResponsability;
  end;

  iUsuario = interface
    ['{125DAD9C-4F3D-4292-A4ED-1364A9EDE4A3}']
    function Responsability : iResponsability;
  end;


  iOperacoes = interface
    ['{B3183723-F8B8-4ECE-BD79-BD6CD3C204E7}']
    function Desconto(Value : Currency) : iOperacoes;
    function &End : iItem;
  end;

  iItem = interface
    ['{32890960-2337-41BB-9509-8C80AE9FE346}']
    function Operacoes : iOperacoes;
  end;


implementation

end.
