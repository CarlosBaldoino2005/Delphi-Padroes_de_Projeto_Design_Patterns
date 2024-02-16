unit Composite.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Composite.Model.Interfaces, Vcl.StdCtrls,
  Composite.Model.Venda, Composite.Model.Itens;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FVenda : iVenda;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  FVenda.Add(
    TModelItens.New
      .Quantidade(StrToCurr(Edit1.Text))
      .Preco(StrToCurr(Edit2.Text))
  );
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Label1.Caption := FormatCurr('R$ #,##0.00', FVenda.Total);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FVenda := TModelVenda.New;
end;

end.
