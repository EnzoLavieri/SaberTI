unit cadClientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, cadModelo, Types;

type

  { TcadClienteF }

  TcadClienteF = class(TcadModeloF)
    btnSalvarClientes: TButton;
    btnCancelar: TButton;
    edtIdCadCliente: TEdit;
    edtCnpjCpf: TEdit;
    edtRazaoSocial: TEdit;
    edtEndereco: TEdit;
    edtTelefone: TEdit;
    edtEmail: TEdit;
    edtNomeFantasia: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure btnCancelarClick(Sender: TObject);
  private

  public

  end;

var
  cadClienteF: TcadClienteF;

implementation

{$R *.lfm}

{ TcadClienteF }

procedure TcadClienteF.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.

