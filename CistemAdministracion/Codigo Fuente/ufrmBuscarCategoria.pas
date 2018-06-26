unit ufrmBuscarCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBuscar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, uDADataTable, uDAScriptingProvider, uDACDSDataTable,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TfrmBuscarCategoria = class(TfrmBuscar)
    cxGridDBTableView1CategoriaID: TcxGridDBColumn;
    cxGridDBTableView1Nombre: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
 end;

var
  frmBuscarCategoria: TfrmBuscarCategoria;

implementation

uses uDM, dmImagenes;

{$R *.dfm}

end.
