unit ufrmBuscarEstacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBuscar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, uDADataTable, uDAScriptingProvider, uDACDSDataTable,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxPC;

type
  TfrmBuscarEstacion = class(TfrmBuscar)
    cxGridDBTableView1EstacionID: TcxGridDBColumn;
    cxGridDBTableView1Nombre: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscarEstacion: TfrmBuscarEstacion;

implementation

{$R *.dfm}

end.
