unit menuPrincipal;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus,
  opSobre, cadProdutos, cadClientes, cadUsuario, cadFornecedor, cadVended;

type

  { TmenuPrincipalF }

  TmenuPrincipalF = class(TForm)
    MainMenu1: TMainMenu;
    menuCadastro: TMenuItem;
    menuCadProdutos: TMenuItem;
    menuCadClientes: TMenuItem;
    menuCadForec: TMenuItem;
    menuCadVeded: TMenuItem;
    menuManutencao: TMenuItem;
    menuSobre: TMenuItem;
    menuSair: TMenuItem;
    procedure menuCadClientesClick(Sender: TObject);
    procedure menuCadForecClick(Sender: TObject);
    procedure menuCadProdutosClick(Sender: TObject);
    procedure menuCadVededClick(Sender: TObject);
    procedure menuManutencaoClick(Sender: TObject);
    procedure menuSairClick(Sender: TObject);
    procedure menuSobreClick(Sender: TObject);

  private

  public

  end;

var
  menuPrincipalF: TmenuPrincipalF;

implementation

{$R *.lfm}

{ TmenuPrincipalF }

procedure TmenuPrincipalF.menuSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TmenuPrincipalF.menuCadProdutosClick(Sender: TObject);
begin
  cadProdutosF := TcadProdutosF.Create(Self);
  cadProdutosF.ShowModal;
end;

procedure TmenuPrincipalF.menuCadVededClick(Sender: TObject);
begin
   cadVendedoresF := TcadVendedoresF.Create(Self);
   cadVendedoresF.ShowModal;
end;

procedure TmenuPrincipalF.menuManutencaoClick(Sender: TObject);
begin
  cadUsuarioF := TcadUsuarioF.Create(self);
  cadUsuarioF.ShowModal;
end;

procedure TmenuPrincipalF.menuCadClientesClick(Sender: TObject);
begin
  cadClienteF := TcadClienteF.Create(Self);
  cadClienteF.ShowModal;
end;

procedure TmenuPrincipalF.menuCadForecClick(Sender: TObject);
begin
  cadForecF := TcadForecF.Create(self);
  cadForecF.ShowModal;
end;


procedure TmenuPrincipalF.menuSobreClick(Sender: TObject);
begin
  opSobreF := TopSobreF.Create(self);
  opSobreF.ShowModal;
end;


end.

