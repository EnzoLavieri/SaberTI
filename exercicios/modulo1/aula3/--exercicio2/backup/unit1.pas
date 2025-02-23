unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    edtNumeroInicial: TEdit;
    Memo1: TMemo;
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
  contador, numerosParesEncontrados, numeroInicial: Integer;
begin
  Memo1.Clear;

  numeroInicial := StrToIntDef(edtNumeroInicial.Text, 0);
  contador := numeroInicial;
  numerosParesEncontrados := 0;


  while numerosParesEncontrados < 3 do
  begin

    if contador mod 2 = 0 then
    begin
      Inc(numerosParesEncontrados);
      Memo1.Lines.Add(IntToStr(contador));
    end;
    Inc(contador);
  end;
end;

end.

