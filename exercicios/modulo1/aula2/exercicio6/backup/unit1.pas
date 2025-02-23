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
  // Definir os percentuais
  percentualDistribuidor := StrToFloat(edtPctDistrib.Text) / 100; // Converte para decimal
  percentualImpostos := StrToFloat(edtPctImposto.Text) / 100; // Converte para decimal

  // Ler o custo de fábrica do Edit
  custoFabrica := StrToFloat(edtCustoFabrica.Text);

  // Calcular o custo ao consumidor
  custoConsumidor := custoFabrica + (custoFabrica * percentualDistribuidor) + (custoFabrica * percentualImpostos);

  // Exibir o resultado no Label
  lblCustoConsumidor.Caption := 'Custo ao Consumidor: ' + FloatToStrF(custoConsumidor, ffCurrency, 10, 2);
end;

end.
