unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnGerarSaida: TButton;
    memoFor: TMemo;
    memoWhile: TMemo;
    memoRepeat: TMemo;
    procedure btnGerarSaidaClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnGerarSaidaClick(Sender: TObject);
  var
  i: Integer;
  begin

begin
  for i := 0 to 10 do
  begin
    memoFor.Lines.Add('Saida com for:' + IntToStr(i));
    if i = 5 then
      Break;
  end;
end;


begin
  i := 0;
  while i <= 10 do
  begin
    memoWhile.Lines.Add('Saida com while:' + IntToStr(i));
    if i = 5 then
      Break;
    Inc(i);
  end;
end;

begin
  i := 0;
  repeat
    memoRepeat.Lines.Add('Saida com repeat:' + IntToStr(i));
    if i = 5 then
      Break;
    Inc(i);
  until i > 10;
end;
end;

end.

