unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonContar: TButton;
    EditNum2: TEdit;
    EditNum1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MemoContagem: TMemo;
    procedure ButtonContarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonContarClick(Sender: TObject);
var
  Num1, Num2, i: Integer;
begin
  MemoContagem.Clear;

  Num1 := StrToInt(EditNum1.Text);
  Num2 := StrToInt(EditNum2.Text);

  if Num1 > Num2 then
  begin
    for i := Num1 downto Num2 do
    begin
      MemoContagem.Lines.Add(IntToStr(i));
    end;
  end
  else
  begin
    MemoContagem.Lines.Add('O primeiro número deve ser maior que o segundo.');
  end;
end;

end.

