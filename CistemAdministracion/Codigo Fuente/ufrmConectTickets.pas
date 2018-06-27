unit ufrmConectTickets;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogo, dxSkinsCore,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, AdvMemo,
  DBAdvMemo, cxLabel, cxTextEdit, cxDBEdit, cxGroupBox, dxmdaset, uDAFields,
  uDADataTable, uROComponent, uDAScriptingProvider, uDAMemDataTable,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, AdvmSQLS;

type
  TfrmCatalogo1 = class(TfrmCatalogo)
    GrpBoxDatos: TcxGroupBox;
    TxtId: TcxDBTextEdit;
    TxtCategoria: TcxDBTextEdit;
    LblId: TcxLabel;
    LblCategoria: TcxLabel;
    cxLabel1: TcxLabel;
    DBAdvMemo1: TDBAdvMemo;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
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
