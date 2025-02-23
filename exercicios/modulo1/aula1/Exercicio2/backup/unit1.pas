unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    inputBox: TEdit;
    btnSwapCap: TToggleBox;
    Label1: TLabel;
    procedure btnSwapCapChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnSwapCapChange(Sender: TObject);
begin
    Form1.Caption:=inputBox.Text;
end;

end.

