unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    btnEsquerda: TButton;
    btnDireita: TButton;
    btnCima: TButton;
    btnBaixo: TButton;
    Label1: TLabel;
    procedure btnEsquerdaClick(Sender: TObject);
    procedure btnDireitaClick(Sender: TObject);
    procedure btnCimaClick(Sender: TObject);
    procedure btnBaixoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

const
  MoveStep = 10; //mexa aqui para mudar o quantos px a img deve mover

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.AutoSize := True;
  {Image1.Left := 100;
  Image1.Top := 100;}
end;


procedure TForm1.btnEsquerdaClick(Sender: TObject);
begin
  Image1.Left := Image1.Left - MoveStep;
end;

procedure TForm1.btnDireitaClick(Sender: TObject);
begin
  Image1.Left := Image1.Left + MoveStep;
end;

procedure TForm1.btnCimaClick(Sender: TObject);
begin
  Image1.Top := Image1.Top - MoveStep;
end;

procedure TForm1.btnBaixoClick(Sender: TObject);
begin
  Image1.Top := Image1.Top + MoveStep;
end;

end.

