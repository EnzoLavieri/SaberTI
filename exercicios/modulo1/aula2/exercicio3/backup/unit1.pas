unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  { TForm1 }
  TForm1 = class(TForm)
    edtCelsius: TEdit;
    btnConverter: TButton;
    Label1: TLabel;
    lblResultado: TLabel;
    procedure btnConverterClick(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnConverterClick(Sender: TObject);
var
  celsius, fahrenheit: Double;
begin

    celsius := StrToFloat(edtCelsius.Text);
    fahrenheit := (celsius * 9/5) + 32;

    lblResultado.Caption := Format('Fahrenheit: %.1f', [fahrenheit]);

end;

end.

