unit Frame_ConConciliacao_Bancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxContainer, Vcl.Menus, cxLabel, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections, WREventos, frxClass, frxDBSet, System.ImageList,
  Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxCalendar, dxStatusBar, dxRibbonStatusBar, uButtonFlat,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, Frame_Con, dxCustomTileControl,
  dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TConsuConciliacao_Bancaria = class(TConsu_Frame)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODBANCO: TcxGridDBColumn;
    GridConsultaDBTableView1CONTA: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FINANCEIRO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_INICIO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FIM: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ARQUIVO: TcxGridDBColumn;
    GridConsultaDBTableView1BALANCO_INICIAL: TcxGridDBColumn;
    GridConsultaDBTableView1BALANCO_FINAL: TcxGridDBColumn;
    tcAgrupadorItem1: TdxTileControlItem;
    tcAgrupadorItem2: TdxTileControlItem;
    tcAgrupadorItem3: TdxTileControlItem;
    tcAgrupadorItem4: TdxTileControlItem;
    tcAgrupadorItem5: TdxTileControlItem;
    tcFiltrosPanelItem1: TdxTileControlItem;
    tcFiltrosPanelItem2: TdxTileControlItem;
    tcFiltrosPanelItem3: TdxTileControlItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuConciliacao_Bancaria: TConsuConciliacao_Bancaria;

implementation

{$R *.dfm}
Uses Base, Tag.Form;

initialization
  RegisterClass(TConsuConciliacao_Bancaria);
  RegisterFrameCon(Tag_Conciliacao_bancaria, TConsuConciliacao_Bancaria);

end.
