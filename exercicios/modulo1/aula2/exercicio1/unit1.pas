unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCalcMedia: TButton;
    edtNotaBim1: TEdit;
    edtNotaBim2: TEdit;
    edtNotaBim3: TEdit;
    edtNotaBim4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblMediaBimTotal: TLabel;
    procedure btnCalcMediaClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnCalcMediaClick(Sender: TObject);
var
  mediaBim1, mediaBim2, mediaBim3, mediaBim4, media: Double;
begin
  mediaBim1:= StrToFloat(edtNotaBim1.Text);
  mediaBim2:= StrToFloat(edtNotaBim2.Text);
  mediaBim3:= StrToFloat(edtNotaBim3.Text);
  mediaBim4:= StrToFloat(edtNotaBim4.Text);

  media:= ((mediaBim1+mediaBim2+mediaBim3+mediaBim4)/4);

  lblMediaBimTotal.Caption := FloatToStr(media);

end;

end.

