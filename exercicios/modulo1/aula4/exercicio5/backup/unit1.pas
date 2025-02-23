unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, StrUtils, Forms, Controls, Graphics, Dialogs,
  Menus, StdCtrls, Printers,
  PrintersDlgs;

type

  { TForm1 }

  TForm1 = class(TForm)
    FindDialog1: TFindDialog;
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    menuArquivo: TMenuItem;
    menuArqNovo: TMenuItem;
    menuArqNovaJanela: TMenuItem;
    menuAqrSalvar: TMenuItem;
    menuAqrAbrir: TMenuItem;
    menuOpcImprimir: TMenuItem;
    menuOpcSubstituir: TMenuItem;
    menuOpcLocalizar: TMenuItem;
    menuSair: TMenuItem;
    menuOpcoes: TMenuItem;
    menuFormatarFonte: TMenuItem;
    OpenDialog1: TOpenDialog;
    PrintDialog1: TPrintDialog;
    ReplaceDialog1: TReplaceDialog;
    SaveDialog1: TSaveDialog;
    procedure menuAqrAbrirClick(Sender: TObject);
    procedure menuAqrSalvarClick(Sender: TObject);
    procedure menuFormatarFonteClick(Sender: TObject);
    procedure menuOpcImprimirClick(Sender: TObject);
    procedure menuOpcLocalizarClick(Sender: TObject);
    procedure menuOpcSubstituirClick(Sender: TObject);
    procedure menuSairClick(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.menuSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.menuAqrSalvarClick(Sender: TObject);
begin
  saveDialog1.Filter := 'Arquivos de Texto (.txt)|*.txt|Todos os Arquivos (*.*)|*.*';
  SaveDialog1.DefaultExt := 'txt';

  if SaveDialog1.Execute then
  begin

    if ExtractFileExt(SaveDialog1.FileName) = '' then
      Memo1.Lines.SaveToFile(SaveDialog1.FileName + '.txt')
    else
      Memo1.Lines.SaveToFile(SaveDialog1.FileName);
  end;
end;

procedure TForm1.menuFormatarFonteClick(Sender: TObject);
begin
  if FontDialog1.Execute then
  begin
    Memo1.Font := FontDialog1.Font;
  end;
end;

procedure TForm1.menuOpcImprimirClick(Sender: TObject);
begin
  if PrintDialog1.Execute then
  begin
    Printer.BeginDoc;
    Printer.Canvas.TextOut(100, 100, 'Texto de teste na impressão!');
    Printer.EndDoc;
  end;
end;

// --> nao consegui implementar a funcao de substituir a palavra mesmo com ajuda de IA :/
procedure TForm1.menuOpcSubstituirClick(Sender: TObject);
begin
  ReplaceDialog1.Execute;
end;

procedure TForm1.ReplaceDialog1Replace(Sender: TObject);
var
  Posicao: integer;
  TextoParaBuscar, TextoSubstituto, TextoMemo: string;
  StartPos: integer;
begin
  TextoParaBuscar := ReplaceDialog1.FindText;
  TextoSubstituto := ReplaceDialog1.ReplaceText;
  TextoMemo := Memo1.Text;
  StartPos := Memo1.SelStart;

  // Procura a palavra no Memo
  Posicao := PosEx(TextoParaBuscar, TextoMemo, StartPos + 1);

  if Posicao > 0 then
  begin
    Memo1.SelStart := Posicao - 1;
    Memo1.SelLength := Length(TextoParaBuscar);
    Memo1.SelText := TextoSubstituto;

    // Se a opção "Replace All" estiver marcada
    if frReplaceAll in ReplaceDialog1.Options then
    begin
      while PosEx(TextoParaBuscar, Memo1.Text) > 0 do
      begin
        StartPos := PosEx(TextoParaBuscar, Memo1.Text);
        Memo1.SelStart := StartPos - 1;
        Memo1.SelLength := Length(TextoParaBuscar);
        Memo1.SelText := TextoSubstituto;
      end;
    end;
  end
  else
    ShowMessage('Texto não encontrado.');
end;

// --> nao consegui implementar a funcao de achar a palavra mesmo com ajuda de IA :/
procedure TForm1.menuOpcLocalizarClick(Sender: TObject);
begin
  FindDialog1.Execute;
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
var
  Posicao: integer;
  TextoParaBuscar, TextoMemo: string;
  StartPos: integer;
begin
  TextoParaBuscar := FindDialog1.FindText;
  TextoMemo := Memo1.Text;

  // Começa após a seleção atual, evitando erros com índice
  StartPos := Memo1.SelStart + Memo1.SelLength;

  // Verifica se há texto para buscar
  if TextoParaBuscar = '' then
  begin
    ShowMessage('Digite um texto para buscar.');
    Exit;
  end;

  // Usa PosEx para procurar a string, garantindo que StartPos esteja correto
  Posicao := PosEx(TextoParaBuscar, TextoMemo, StartPos + 1);

  if Posicao > 0 then
  begin
    // Ajusta a posição para o índice baseado em 0 do Memo
    Memo1.SelStart := Posicao - 1;
    Memo1.SelLength := Length(TextoParaBuscar);
    Memo1.SetFocus;
  end
  else
    ShowMessage('Texto não encontrado.');
end;


procedure TForm1.menuAqrAbrirClick(Sender: TObject);
begin
  OpenDialog1.Filter := 'Arquivos de Texto (*.txt)|*.txt|Todos os Arquivos (*.*)|*.*';

  if OpenDialog1.Execute then
  begin
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
  end;
end;


end.

