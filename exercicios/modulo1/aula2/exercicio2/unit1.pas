unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCalcular: TButton;
    edtSalBrutoJan: TEdit;
    edtSalBrutoFev: TEdit;
    edtPctDescJan: TEdit;
    edtPctDescFev: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblSalLiqJan: TLabel;
    lblSalLiqFev: TLabel;
    lblSalBrutoTotal: TLabel;
    lblSalLiqTotal: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

//nao se esquecer de perdir a resolucao mais
//otimizada para esse exercicio

procedure TForm1.btnCalcularClick(Sender: TObject);
var
   salBrutoJan, pctDescJan, salLiqJan,
   salBrutoFev, pctDescFev, salLiqFev: Double;
begin
   //---- logica janeiro
   salBrutoJan := StrToFloat(edtSalBrutoJan.Text);  // Aqui deve ser o salário bruto
   pctDescJan := StrToFloat(edtPctDescJan.Text);    // Aqui é o percentual de desconto
   salLiqJan := salBrutoJan - (salBrutoJan * (pctDescJan / 100));
   lblSalLiqJan.Caption := FloatToStr(salLiqJan);
   //---- logica fevereiro
   salBrutoFev := StrToFloat(edtSalBrutoFev.Text);  // Aqui deve ser o salário bruto
   pctDescFev := StrToFloat(edtPctDescFev.Text);    // Aqui é o percentual de desconto
   salLiqFev := salBrutoFev - (salBrutoFev * (pctDescFev / 100));
   lblSalLiqFev.Caption := FloatToStr(salLiqFev);
   //-- mesma logica para o resto dos meses

   lblSalBrutoTotal.Caption := FloatToStr(salBrutoFev + salBrutoFev) ;
   lblSalLiqTotal.Caption := FloatToStr(salLiqJan+ salLiqFev);

end;


end.

