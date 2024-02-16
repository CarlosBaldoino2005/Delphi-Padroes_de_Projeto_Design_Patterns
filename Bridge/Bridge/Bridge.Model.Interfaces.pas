unit Bridge.Model.Interfaces;

interface

type

  TVenda = record
    COO : Integer;
    Itens : Integer;
    Total : Currency;
  end;

  iExport<t> = interface;

  iSource<t> = interface
    ['{F2B074B1-F991-4783-BAA5-9304AF00C698}']
    function Exportar(Value : iExport<t>) : iSource<t>;
  end;

  iExport<t> = interface
    ['{C193344E-62C5-4DDD-82DA-232B46EF0EB6}']
    function GerarRegistros(Value : t) : iExport<t>;
  end;

implementation

end.
