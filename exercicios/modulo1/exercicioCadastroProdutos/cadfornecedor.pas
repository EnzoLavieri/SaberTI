unit cadFornecedor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, cadModelo;

type

  { TcadForecF }

  TcadForecF = class(TcadModeloF)
    btnSalvarForec: TButton;
    btnCancelar: TButton;
    edtIdForec: TEdit;
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
    procedure btnCancelarClick(Sender: TObject);
  private

  public

  end;

var
  cadForecF: TcadForecF;

implementation

{$R *.lfm}

{ TcadForecF }

procedure TcadForecF.btnCancelarClick(Sender: TObject);
begin
  close
end;

end.

