unit ufraBomba;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TfraBomba = class(TFrame)
    Panel1: TPanel;
    Memo1: TMemo;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image38: TImage;
    Image39: TImage;
    lblPrefijaBomba: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Image37: TImage;
    lblBomba: TLabel;
    Edit1: TEdit;
    procedure Image28Click(Sender: TObject);
    procedure Image39Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FrameCreate;
    procedure FramePaint;
  end;

implementation

uses UtileriasComun;

{$R *.dfm}

procedure TfraBomba.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9'] then
    lblPrefijaBomba.Caption:=lblPrefijaBomba.Caption + key;
end;

procedure TfraBomba.FrameCreate;
var
  I: Integer;
  Aux: Tstrings;
  S: String;
begin
  Aux:=TStringList.Create;
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is timage then
    begin
      S:=Components[I].Name;
      s:=S + ',' + IntToStr(TImage(Components[I]).Left);
      s:=S + ',' + IntToStr(TImage(Components[I]).Top);
      s:=S + ',' + IntToStr(TImage(Components[I]).width);
      s:=S + ',' + IntToStr(TImage(Components[I]).Height);
      Aux.Add(S);
    end;
    if Components[I] is tlabel then
    begin
      S:=Components[I].Name;
      s:=S + ',' + IntToStr(Tlabel(Components[I]).Left);
      s:=S + ',' + IntToStr(Tlabel(Components[I]).Top);
      s:=S + ',' + IntToStr(Tlabel(Components[I]).width);
      s:=S + ',' + IntToStr(Tlabel(Components[I]).Height);
      Aux.Add(S);
    end;
  end;
  Aux.SaveToFile('C:\123i.txt');
end;

procedure TfraBomba.FramePaint;
var
  I, J: Integer;
begin
  inherited;
  FrameCreate;
  for I := 0 to ComponentCount - 1 do
  begin

    for J := 1 to Memo1.Lines.Count - 1 do
    begin
      if GetParsedItem(Memo1.Lines[J], ',', 0) =  Components[I].Name then
      begin
        if Components[I] is TImage then
        begin
          TImage(Components[I]).Left:=StrToInt(GetParsedItem(Memo1.Lines[J], ',', 1));
          TImage(Components[I]).Top:=StrToInt(GetParsedItem(Memo1.Lines[J], ',', 2));
          TImage(Components[I]).Width:=StrToInt(GetParsedItem(Memo1.Lines[J], ',', 3));
          TImage(Components[I]).Height:=StrToInt(GetParsedItem(Memo1.Lines[J], ',', 4));
        end;
        if Components[I] is TLabel then
        begin
          TLabel(Components[I]).Left:=StrToInt(GetParsedItem(Memo1.Lines[J], ',', 1));
          TLabel(Components[I]).Top:=StrToInt(GetParsedItem(Memo1.Lines[J], ',', 2));
          TLabel(Components[I]).Width:=StrToInt(GetParsedItem(Memo1.Lines[J], ',', 3));
          TLabel(Components[I]).Height:=StrToInt(GetParsedItem(Memo1.Lines[J], ',', 4));
        end;
        break;
      end;
    end;
  end;
end;

procedure TfraBomba.Image28Click(Sender: TObject);
begin
  lblPrefijaBomba.Caption:=lblPrefijaBomba.Caption + Char((Sender as TImage).Tag);
end;

procedure TfraBomba.Image39Click(Sender: TObject);
begin
  lblPrefijaBomba.Caption:='';
end;

end.
