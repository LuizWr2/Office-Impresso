unit ConProducao_Acao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, cxGridTableView,
  cxGridDBTableView, WREventos, UCHistDataset, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, dxStatusBar, uButtonFlat, cxGridViewLayoutContainer,
  cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView, dxTokenEdit, cxDateProfileButton, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView,
  cxGridCustomView, cxGrid, dxLayoutControl, dxRibbonSkins, dxRibbonCustomizationForm, dxBar, cxBarEditItem,
  dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, dxRibbonStatusBar, System.Generics.Collections,
  dxPSdxDBOCLnk, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, cxCustomStatusKeeper, cxStatusKeeper;

type
  TConsuProducao_Acao = class(TConsuM)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuProducao_Acao: TConsuProducao_Acao;

implementation

{$R *.dfm}

initialization
  RegisterClass(TConsuProducao_Acao);

end.
