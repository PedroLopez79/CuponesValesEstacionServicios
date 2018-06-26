unit ufrmBuscarDespachador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBuscar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, uDADataTable, uDAScriptingProvider, uDACDSDataTable,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TfrmBuscarDespachador = class(TfrmBuscar)
    cxGridDBTableView1DespachadorID: TcxGridDBColumn;
    cxGridDBTableView1Nombre: TcxGridDBColumn;
    cxGridDBTableView1Codigo: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscarDespachador: TfrmBuscarDespachador;

implementation

{$R *.dfm}

end.
