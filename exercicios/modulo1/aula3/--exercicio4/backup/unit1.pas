unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
  var
  i: Integer;
  begin

begin
  for i := 0 to 10 do
  begin
    Memo1.Lines.Add('Saida com for:' + IntToStr(i));  // Adiciona o valor de i ao Memo
    if i = 5 then
      Break;  // Força a saída do laço quando i for igual a 5
  end;
end;


begin
  i := 0;
  while i <= 10 do
  begin
    Memo2.Lines.Add('Saida com while:' + IntToStr(i));  // Adiciona o valor de i ao Memo
    if i = 5 then
      Break;  // Força a saída do laço quando i for igual a 5
    Inc(i);  // Incrementa i em 1
  end;
end;

begin
  i := 0;
  repeat
    Memo3.Lines.Add('Saida com repeat:' + IntToStr(i));  // Adiciona o valor de i ao Memo
    if i = 5 then
      Break;  // Força a saída do laço quando i for igual a 5
    Inc(i);  // Incrementa i em 1
  until i > 10;
end;
end;

end.

