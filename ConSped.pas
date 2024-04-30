unit ConSped;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel, dxLayoutContainer,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxRibbonSkins, dxRibbonCustomizationForm, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, dxOfficeSearchBox, dxServerModeData,
  dxServerModeFireDACDataSource, dxBar, cxBarEditItem, WREventos, frxClass, frxDBSet, System.ImageList, Vcl.ImgList,
  cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon, dxStatusBar, dxRibbonStatusBar, cxDropDownEdit,
  uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView,
  cxDateProfileButton, cxCalendar, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel,
  cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  System.Generics.Collections, cxDateNavigator;

type
  TConsSped = class(TConsuM)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaATIVO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaDT_SPED_GERADO: TSQLTimeStampField;
    ConsultaDT_INICO: TSQLTimeStampField;
    ConsultaDT_FIM: TSQLTimeStampField;
    ConsultaPERFIL: TStringField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_SPED_GERADO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_INICO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FIM: TcxGridDBColumn;
    GridConsultaDBTableView1PERFIL: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsSped: TConsSped;

implementation

{$R *.dfm}

initialization
  RegisterClass(TConsSped);

end.
