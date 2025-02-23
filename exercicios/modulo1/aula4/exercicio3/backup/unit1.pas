unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSoma: TButton;
    btnSub: TButton;
    btnMult: TButton;
    btnDiv: TButton;
    edtResultado: TEdit;
    edtNum1: TEdit;
    edtNum2: TEdit;
    Panel1: TPanel;
    procedure Calcular(operacao: Char);
    procedure btnDivClick(Sender: TObject);
    procedure btnMultClick(Sender: TObject);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  num1, num2, resultado: Double;

implementation

{$R *.lfm}

{ TForm1 }
{
versao mais estruturada que pedi ajuda a AI de como
poderia usar apenas os sinais, pois o codigo estava
muito repetitivo e seguia a mesma logica, para
todas as funcoes
}
procedure TForm1.Calcular(operacao: Char);
begin
  num1 := StrToFloat(edtNum1.Text);
  num2 := StrToFloat(edtNum2.Text);

  case operacao of
    '+': resultado := num1 + num2;
    '-': resultado := num1 - num2;
    '*': resultado := num1 * num2;
    '/': if num2 <> 0 then
           resultado := num1 / num2
         else
         begin
           ShowMessage('Erro: Divisão por zero!');
           Exit;
         end;
  end;

  edtResultado.Text := FloatToStr(resultado);
end;

procedure TForm1.btnSomaClick(Sender: TObject);
begin
  Calcular('+');
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
  Calcular('-');
end;

procedure TForm1.btnMultClick(Sender: TObject);
begin
  Calcular('*');
end;

procedure TForm1.btnDivClick(Sender: TObject);
begin
  Calcular('/');
end;

{

----> VERSAO MAIS ARCAICA QUE EU FIZ RAPIDAO

procedure TForm1.btnSomaClick(Sender: TObject);
begin
  num1 := StrToFloat(edtNum1.Text);
  num2 := StrToFloat(edtNum2.Text);

  resultado := num1 + num2;

  edtResultado.Text := FloatToStr(resultado);
end;

procedure TForm1.btnMultClick(Sender: TObject);
begin
    num1 := StrToFloat(edtNum1.Text);
  num2 := StrToFloat(edtNum2.Text);

  resultado := num1 * num2;

  edtResultado.Text := FloatToStr(resultado);
end;

procedure TForm1.btnDivClick(Sender: TObject);
begin
    num1 := StrToFloat(edtNum1.Text);
  num2 := StrToFloat(edtNum2.Text);

  resultado := num1 / num2;

  edtResultado.Text := FloatToStr(resultado);
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
  num1 := StrToFloat(edtNum1.Text);
  num2 := StrToFloat(edtNum2.Text);

  resultado := num1 - num2;

  edtResultado.Text := FloatToStr(resultado);
end;
}


end.

