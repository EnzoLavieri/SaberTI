unit cadVended;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, cadModelo;

type

  { TcadVendedoresF }

  TcadVendedoresF = class(TcadModeloF)
    btnSalvarVended: TButton;
    btnCancelar: TButton;
    edtPctComis: TEdit;
    edtIdVendedores: TEdit;
    edtCnpjCpf: TEdit;
    edtNomeFantasia: TEdit;
    edtRazaoSocial: TEdit;
    edtEndereco: TEdit;
    edtTelefone: TEdit;
    edtEmail: TEdit;
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
  cadVendedoresF: TcadVendedoresF;

implementation

{$R *.lfm}

{ TcadVendedoresF }

procedure TcadVendedoresF.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.

