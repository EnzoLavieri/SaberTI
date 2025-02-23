unit cadEsqSenha;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  menuPrincipal;

type

  { TcadEsqSenhaf }

  TcadEsqSenhaf = class(TForm)
    btnEntrar: TButton;
    btnCancelar: TButton;
    edtEmail: TEdit;
    edtSenhaNva: TEdit;
    edtConfirmar: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
  private

  public

  end;

var
  cadEsqSenhaf: TcadEsqSenhaf;

implementation

{$R *.lfm}

{ TcadEsqSenhaf }

procedure TcadEsqSenhaf.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TcadEsqSenhaf.btnEntrarClick(Sender: TObject);
begin
     menuPrincipalF := TmenuPrincipalF.Create(self);
  menuPrincipalF.ShowModal;
end;

end.

