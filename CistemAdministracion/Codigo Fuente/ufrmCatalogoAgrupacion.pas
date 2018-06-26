unit ufrmCatalogoAgrupacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ComCtrls, dxtree, dxdbtree, cxLabel,
  cxTextEdit, cxDBEdit, cxContainer, cxGroupBox, dxmdaset, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC;

type
  TfrmCatalogo1 = class(TfrmCatalogo)
    GrpBoxAgrupaciones: TcxGroupBox;
    TxtAgrupacion: TcxDBTextEdit;
    LblAgrupacion: TcxLabel;
    TreeViewBombas: TdxDBTreeView;
    LookupCmBoxProducto1: TcxDBLookupComboBox;
    LookupCmBoxProducto2: TcxDBLookupComboBox;
    LblProducto1: TcxLabel;
    LblProducto2: TcxLabel;
    LblEstacion: TcxLabel;
    LblBomba: TcxLabel;
    LookupCmBoxEstacion: TcxDBLookupComboBox;
    LookupCmBoxBomba: TcxDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogo1: TfrmCatalogo1;

implementation

{$R *.dfm}

end.
