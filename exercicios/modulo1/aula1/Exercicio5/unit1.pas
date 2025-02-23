unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.Add('Tudo maiúsculo');
  ComboBox1.Items.Add('Tudo minúsculo');
  ComboBox1.Items.Add('Somente primeira letra maiúscula');
  ComboBox1.Items.Add('Somente primeira letra minúscula');
  ComboBox1.ItemIndex := 0;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  texto: string;
begin
  texto := Edit1.Text;
  case ComboBox1.ItemIndex of
    0: texto := UpperCase(texto);
    1: texto := LowerCase(texto);
    2: texto := AnsiUpperCase(Copy(texto, 1, 1)) + AnsiLowerCase(Copy(texto, 2, Length(texto)));
    3: texto := AnsiLowerCase(Copy(texto, 1, 1)) + Copy(texto, 2, Length(texto));
  end;
  Label1.Caption := 'Resultado: ' + texto;
end;

end.

