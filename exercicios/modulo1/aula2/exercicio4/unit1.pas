unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);


  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  dias, anos, meses, diasRestantes: Integer;
begin
  dias := StrToInt(Edit1.Text);

  anos := dias div 365;
  diasRestantes := dias mod 365;

  meses := diasRestantes div 30;
  diasRestantes := diasRestantes mod 30;

  //Label1.Caption:=Edit1.Text;
  Label2.Caption := 'Anos: ' + IntToStr(anos);
  Label3.Caption := 'Meses: ' + IntToStr(meses);
  Label4.Caption := 'Dias: ' + IntToStr(diasRestantes);
end;



end.

