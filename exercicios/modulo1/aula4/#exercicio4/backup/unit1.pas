unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, DateUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FAlarmTime: TDateTime; // Armazena o horário do alarme
    FAlarmTriggered: Boolean; // Flag para indicar se o alarme já foi acionado
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  try
    // Converte o texto do Edit1 para um horário (formato HH:MM)
    FAlarmTime := StrToTime(Edit1.Text);
    FAlarmTriggered := False; // Reseta a flag do alarme
    Timer1.Enabled := True; // Ativa o timer
    Label1.Caption := 'Alarme definido para ' + TimeToStr(FAlarmTime);
  except
    on E: Exception do
      ShowMessage('Formato de horário inválido. Use HH:MM');
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  CurrentTime: TDateTime;
begin
  // Obtém o horário atual
  CurrentTime := Now;

  // Verifica se o horário atual é igual ou passou do horário do alarme
  if (CurrentTime >= FAlarmTime) and (not FAlarmTriggered) then
  begin
    FAlarmTriggered := True; // Marca o alarme como acionado
    Timer1.Enabled := False; // Desativa o timer
    Label1.Caption := 'ALARME! Hora: ' + TimeToStr(CurrentTime);
    ShowMessage('ALARME! Hora: ' + TimeToStr(CurrentTime));
  end;
end;

end.
