unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    imgBox: TImage;
    Label1: TLabel;
    procedure btnShowHideClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnShowHideClick(Sender: TObject);
begin
  //solucao mais curta sem usar if else :)
  imgBox.Visible:= not imgBox.Visible;
end;

end.

