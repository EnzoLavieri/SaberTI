unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnTroca: TButton;
    edtTexto: TEdit;
    lblTextoModif: TLabel;
    rdoTxtMaiusc: TRadioButton;
    rdoTxtMinisc: TRadioButton;
    rdoPrimMaiusc: TRadioButton;
    rdoSegMinisc: TRadioButton;
    procedure btnTrocaClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

//queria usar combo box, mas nao consegui listar as
//funcoes dentro do obj
procedure TForm1.btnTrocaClick(Sender: TObject);
var
  Texto: string;
begin
  Texto := edtTexto.Text;
  if rdoTxtMaiusc.Checked then
    lblTextoModif.Caption := UpperCase(Texto)
  else if rdoTxtMinisc.Checked then
    lblTextoModif.Caption := LowerCase(Texto)
  else if rdoPrimMaiusc.Checked then
    lblTextoModif.Caption := UpCase(Texto[1]) + LowerCase(Copy(Texto, 2, Length(Texto)))
  else if rdoSegMinisc.Checked then
    lblTextoModif.Caption := LowerCase(Texto[1]) + Copy(Texto, 2, Length(Texto));
end;

end.
