unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCriarImpares: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    procedure btnCriarImparesClick(Sender: TObject);
    procedure Memo3Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnCriarImparesClick(Sender: TObject);
var
  i: Integer;
begin
  Memo1.Clear;

  //----Laço FOR
  for i := 0 to 10 do
  begin
    if i mod 2 <> 0 then
      Memo1.Lines.Add('Loop for: ' + IntToStr(i));
  end;

  //----Laço WHILE
  i := 0;
  while i <= 10 do
  begin
    if i mod 2 <> 0 then
      Memo2.Lines.Add('Loop while: ' + IntToStr(i));
    i := i + 1;
  end;

  //----Laço REPEAT
  i := 0;
  repeat
    if i mod 2 <> 0 then
      Memo3.Lines.Add('Loop repeat: ' + IntToStr(i));
    i := i + 1;
  until i > 10;
end;

procedure TForm1.Memo3Change(Sender: TObject);
begin

end;

end.

