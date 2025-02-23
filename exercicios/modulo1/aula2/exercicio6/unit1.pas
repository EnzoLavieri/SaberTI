unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edtCustoFabrica: TEdit;
    edtPctDistrib: TEdit;
    edtPctImposto: TEdit;
    lblCustoConsumidor: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  custoFabrica: Double; // Declarado globalmente

implementation

{$R *.lfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  custoConsumidor: Double;
  percentualDistribuidor, percentualImpostos: Double;
begin
  //gambiarra pra converter pra decimal :p
  percentualDistribuidor := StrToFloat(edtPctDistrib.Text) / 100;
  percentualImpostos := StrToFloat(edtPctImposto.Text) / 100;

  custoFabrica := StrToFloat(edtCustoFabrica.Text);

  custoConsumidor := custoFabrica + (custoFabrica * percentualDistribuidor) + (custoFabrica * percentualImpostos);

  lblCustoConsumidor.Caption := 'Custo ao Consumidor: ' + FloatToStrF(custoConsumidor, ffCurrency, 10, 2);
end;

end.
