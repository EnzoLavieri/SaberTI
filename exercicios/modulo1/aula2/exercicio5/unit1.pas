unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnConverter: TButton;
    edtSegundos: TEdit;
    lblHrs: TLabel;
    lblMin: TLabel;
    lblSeg: TLabel;
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
  tempoTotal, horas, minutos, segundos: Integer;
begin
  tempoTotal := StrToInt(edtSegundos.Text);

  horas := tempoTotal div 3600;
  tempoTotal := tempoTotal mod 3600;
  minutos := tempoTotal div 60;
  segundos := tempoTotal mod 60;


  lblHrs.Caption := 'Horas: ' + IntToStr(horas);
  lblMin.Caption := 'Minutos: ' + IntToStr(minutos);
  lblSeg.Caption := 'Segundos: ' + IntToStr(segundos);
end;

end.

