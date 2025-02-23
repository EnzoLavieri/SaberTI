unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type
  { TForm1 }
  TForm1 = class(TForm)
    ButtonCalcular: TButton;
    cbCQ: TCheckBox;
    cbBS: TCheckBox;
    cbBCO: TCheckBox;
    cbH: TCheckBox;
    cbCB: TCheckBox;
    cbRefri: TCheckBox;
    edtQtdeCQ: TEdit;
    edtQtdeBS: TEdit;
    edtQtdeBCO: TEdit;
    edtQtdeH: TEdit;
    edtQtdeCB: TEdit;
    edtQtdeRefri: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LabelTotal: TLabel;
    RadioGroupEntrega: TRadioGroup;
    procedure ButtonCalcularClick(Sender: TObject);
    procedure edtQtdeCQChange(Sender: TObject);
  private
    function CalcularTotal: double;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function TForm1.CalcularTotal: double;
var
  qtdeCQ, qtdeBS, qtdeBCO, qtdeH, qtdeCB, qtdeRefri: integer;
  total: double;
begin
  total := 0;
  qtdeCQ := StrToInt(edtQtdeCQ.Text);
  if cbCQ.Checked then total := total + (qtdeCQ * 12.00);
  //------
  qtdeBS := StrToInt(edtQtdeBS.Text);
  if cbBS.Checked then total := total + (qtdeBS * 13.00);
  //------
  qtdeBCO := StrToInt(edtQtdeBCO.Text);
  if cbBCO.Checked then total := total + (qtdeBCO * 15.00);
  //------
  qtdeH := StrToInt(edtQtdeH.Text);
  if cbH.Checked then total := total + (qtdeH * 12.00);
  //------
  qtdeCB := StrToInt(edtQtdeCB.Text);
  if cbCB.Checked then total := total + (qtdeCB * 13.00);
  //------
  qtdeRefri := StrToInt(edtQtdeRefri.Text);
  if cbRefri.Checked then total := total + (qtdeRefri * 5.00);


  if RadioGroupEntrega.ItemIndex = 1 then
    total := total + 4.0;

  Result := total;
end;

procedure TForm1.ButtonCalcularClick(Sender: TObject);
begin
  LabelTotal.Caption := 'Total: R$ ' + FloatToStrF(CalcularTotal, ffFixed, 8, 2);
end;

procedure TForm1.edtQtdeCQChange(Sender: TObject);
begin

end;

end.

