inherited ConsuTipo_Impressao: TConsuTipo_Impressao
  Caption = 'Equipamento\Impressora'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
        end
        object GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DESCRICAO'
          Width = 460
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          Width = 35
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = #218'ltima Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
        end
      end
    end
    inherited BtnPesquisar: TcxButton
      TabOrder = 25
    end
    inherited BtnPaginaAnterior: TcxButton
      TabOrder = 21
    end
    inherited LbFiltosAtivos: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa1: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa2: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa3: TcxLabel
      AnchorY = 53
    end
    inherited LbPesquisaFixa4: TcxLabel
      AnchorY = 53
    end
    inherited cxButton2: TcxButton
      TabOrder = 24
    end
    inherited BtnGoogleMais: TcxButton
      TabOrder = 19
    end
    inherited BtnSubGrdTODOS: TWRButtonFlat
      TabOrder = 20
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Equipamento\Impressora'
      ExplicitWidth = 278
    end
    inherited LiLbTituloFrame: TdxLayoutItem
      ControlOptions.OriginalWidth = 278
    end
  end
  inherited pnlFiltroData: TPanel
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 41862.743121550920000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT * FROM TIPO_IMPRESSAO')
    object ConsultaCODIGO: TIntegerField [0]
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ConsultaDESCRICAO: TStringField [1]
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object ConsultaDT_ALTERACAO: TSQLTimeStampField [2]
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object ConsultaATIVO: TStringField [3]
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxEditStyleController1: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited WREventosCadastro: TWREventosCadastro
    FormClassCadastro = 'TFrmTipo_Impressao'
    FormClassConsulta = 'TConsuTipo_Impressao'
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'TIPO_IMPRESSAO'
    Modulo = 'PRODUCAO'
  end
end