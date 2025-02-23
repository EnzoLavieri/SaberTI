unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
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
  ComboBox1.Items.Clear;             //Delete all existing choices
  ComboBox1.Items.Add('Red');        //Add an choice
  ComboBox1.Items.Add('Green');
  ComboBox1.Items.Add('Blue');
  ComboBox1.Items.Add('Random Color');
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

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

end.

