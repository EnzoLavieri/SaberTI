unit oplogin;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  menuPrincipal, cadEsqSenha;

type

  { TopLoginF }

  TopLoginF = class(TForm)
    btnLogar: TButton;
    btnEsqueciSenha: TButton;
    btnSair: TButton;
    edtEmail: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnEsqueciSenhaClick(Sender: TObject);
    procedure btnLogarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private

  public

  end;

var
  opLoginF: TopLoginF;

implementation

{$R *.lfm}

{ TopLoginF }

procedure TopLoginF.btnLogarClick(Sender: TObject);
begin
  menuPrincipalF := TmenuPrincipalF.Create(self);
  menuPrincipalF.ShowModal;
end;

procedure TopLoginF.btnEsqueciSenhaClick(Sender: TObject);
begin
    cadEsqSenhaF:= TcadEsqSenhaF.Create(self);
  cadEsqSenhaF.ShowModal;
end;

procedure TopLoginF.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.

