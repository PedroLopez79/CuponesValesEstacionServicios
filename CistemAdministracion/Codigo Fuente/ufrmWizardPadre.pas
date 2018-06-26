unit ufrmWizardPadre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfrmWizardPadre = class(TForm)
  private
    FCargos: Double;
    FAbonos: Double;
    FSaldo: Double;
    procedure SetAbonos(const Value: Double);
    procedure SetCargos(const Value: Double);
    { Private declarations }
  public
    { Public declarations }
    property Cargos: Double read FCargos write SetCargos;
    property Abonos: Double read FAbonos write SetAbonos;
    property Saldo: Double read FSaldo;
    procedure Calcular; virtual; abstract;
  end;

var
  frmWizardPadre: TfrmWizardPadre;

implementation

{$R *.dfm}

{ TfrmWizardPadre }

procedure TfrmWizardPadre.SetAbonos(const Value: Double);
begin
  FAbonos := Value;
  FSaldo:=Cargos - Abonos;
end;

procedure TfrmWizardPadre.SetCargos(const Value: Double);
begin
  FCargos := Value;
  FSaldo:=Cargos - Abonos;
end;

end.
