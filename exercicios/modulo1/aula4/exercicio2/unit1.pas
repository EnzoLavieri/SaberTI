unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonCalcular: TButton;
    EditNota1: TEdit;
    EditNota2: TEdit;
    EditNota3: TEdit;
    EditPeso1: TEdit;
    EditPeso2: TEdit;
    EditPeso3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    LabelResultado: TLabel;
    RadioGroupTipoMedia: TRadioGroup;
    procedure ButtonCalcularClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonCalcularClick(Sender: TObject);
var
  nota1, nota2, nota3, peso1, peso2, peso3, media: Double;
begin
  nota1 := StrToFloat(EditNota1.Text);
  nota2 := StrToFloat(EditNota2.Text);
  nota3 := StrToFloat(EditNota3.Text);

  if RadioGroupTipoMedia.ItemIndex = 0 then
  begin
    media := (nota1 + nota2 + nota3) / 3;
    LabelResultado.Caption := 'Média Simples: ' + FloatToStrF(media, ffFixed, 5, 2);
  end
  else
  begin
    peso1 := StrToFloat(EditPeso1.Text);
    peso2 := StrToFloat(EditPeso2.Text);
    peso3 := StrToFloat(EditPeso3.Text);

    media := (nota1 * peso1 + nota2 * peso2 + nota3 * peso3) / (peso1 + peso2 + peso3);
    LabelResultado.Caption := 'Média Ponderada: ' + FloatToStrF(media, ffFixed, 5, 2);
  end;
end;

end.
