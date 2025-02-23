unit opSobre;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TopSobreF }

  TopSobreF = class(TForm)
    Memo1: TMemo;
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  opSobreF: TopSobreF;

implementation

{$R *.lfm}

{ TopSobreF }

procedure TopSobreF.Memo1Change(Sender: TObject);
begin

end;

end.

