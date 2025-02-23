unit cadModelo;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, Grids, ComCtrls;

type

  { TcadModeloF }

  TcadModeloF = class(TForm)
    btnPesquisar: TButton;
    btnSair: TBitBtn;
    btnSalvar: TBitBtn;
    edtPesqID: TEdit;
    Label1: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure btnSairClick(Sender: TObject);
  private

  public

  end;

var
  cadModeloF: TcadModeloF;

implementation

{$R *.lfm}

{ TcadModeloF }

procedure TcadModeloF.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.

