unit cadUsuario;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, cadModelo;

type

  { TcadUsuarioF }

  TcadUsuarioF = class(TcadModeloF)
    //btnSalvarUser: TButton;
    btnCancelar: TButton;
    btnSalvarUser: TButton;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    edtIdCadUsuario: TEdit;
    edtCnpjCpf: TEdit;
    edtNomeFantasia: TEdit;
    edtRazaoSocial: TEdit;
    edtEndereco: TEdit;
    edtTelefone: TEdit;
    edtEmail: TEdit;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure btnCancelarClick(Sender: TObject);
  private

  public

  end;

var
  cadUsuarioF: TcadUsuarioF;

implementation

{$R *.lfm}

{ TcadUsuarioF }

procedure TcadUsuarioF.btnCancelarClick(Sender: TObject);
begin
  close;
end;

end.

