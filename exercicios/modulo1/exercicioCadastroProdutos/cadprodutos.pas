unit cadprodutos;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, cadModelo;

type

  { TcadProdutosF }

  TcadProdutosF = class(TcadModeloF)
    btnCancelar: TButton;
    btnSalvarProdutos: TButton;
    cbTipoProduto: TComboBox;
    edtIdCadProduto: TEdit;
    edtDescSimples: TEdit;
    edtDescCompleta: TEdit;
    edtValorVenda: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btnCancelarClick(Sender: TObject);
  private

  public

  end;

var
  cadProdutosF: TcadProdutosF;

implementation

{$R *.lfm}

{ TcadProdutosF }

procedure TcadProdutosF.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.

