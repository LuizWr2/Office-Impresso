unit CadProduto_Estoque_Local;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client, FireDAC.Comp.DataSet, WREventos,
  UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxSkinsCore, dxUIAdorners,
  fs_iinterpreter, System.Generics.Collections, cxLabel;

type
  TFrmProduto_Estoque_Local = class(TFrmCadM)
    CadastroCODIGO: TIntegerField;
    CadastroDESCRICAO: TStringField;
    CadastroDT_ALTERACAO: TSQLTimeStampField;
    CadastroATIVO: TStringField;
    procedure btnConfirmarClick(Sender: TObject);
    procedure DSStateChange(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Descricao_Antiga : String;    // N�o da para substituir por OldValue??
    function VerificaDesc(ADesc: String): Boolean;
  end;

implementation

{$R *.dfm}

uses
  wrFuncoes, UnitFuncoes;

procedure TFrmProduto_Estoque_Local.btnConfirmarClick(Sender: TObject);
Var
  QuerX: TFDQuery;
begin
  Cadastro.FieldByName('DESCRICAO').AsString := Trim(Cadastro.FieldByName('DESCRICAO').AsString);
  if not VerificaDesc(Cadastro.FieldByName('DESCRICAO').AsString) then
  begin
    MessageBox(0, PWideChar('A descri��o n�o pode conter espa�os ou caracteres especiais. � permitido apenas o uso de letras, n�meros e Underline ' + QuotedStr('_') + '. N�o � permitido iniciar a descri��o com n�mero e o tamanho n�o pode ser menor que 2 d�gitos e maior que 15 d�gitos.'), PWideChar(Sistema.Nome), MB_ICONWARNING or MB_OK);
    Exit;
  end;
  try
    if ds.State = dsInsert then
    begin
      QuerX:=GeraFDQuery(TransaFD);
      try
        QuerX.SQL.Text := 'ALTER TABLE PRODUTO_ESTOQUE ADD ' + Cadastro.FieldByName('DESCRICAO').AsString + ' DOUBLE PRECISION';
        QuerX.ExecSQL;
      finally
        FreeAndNil(QuerX);
      end;
    end else
    begin
      if Descricao_Antiga <> Cadastro.FieldByName('DESCRICAO').AsString then   // N�o da para substituir por OldValue??
      begin
        QuerX:=GeraFDQuery(TransaFD);
        try
          QuerX.SQL.Text := 'ALTER TABLE PRODUTO_ESTOQUE ALTER ' + Descricao_Antiga + ' TO ' + Cadastro.FieldByName('DESCRICAO').AsString;
          QuerX.ExecSQL;
        finally
          FreeAndNil(QuerX);
        end;
      end;
    end;
  except
    btnCancelarClick(Self);
    MessageBox(0, 'N�o conseguiu concluir a opera��o de criar a estrutura na base de dados, verifique a ortografia.', '', MB_ICONINFORMATION or MB_OK or MB_TASKMODAL);
    Exit;
  end;
  inherited;
end;

procedure TFrmProduto_Estoque_Local.btnExcluirClick(Sender: TObject);
Var
  QuerX: TFDQuery;
begin
  if not ds.DataSet.IsEmpty and (MessageDlg('Deseja excluir este local de Estoque?', mtInformation, [mbYes, mbNo], 0) = mrYes) then
  begin
    if Cadastro.FieldByName('DESCRICAO').AsString = 'PRINCIPAL' then
    begin
      MessageBox(0, 'O estoque PRINCIPAL n�o pode ser exclu�do.', '', MB_ICONINFORMATION or MB_OK or MB_TASKMODAL);
      Exit;
    end;
    try
      QuerX:=GeraFDQuery(TransaFD);
      try
        QuerX.SQL.Text := 'UPDATE PRODUTO_ESTOQUE SET PRINCIPAL = 0 WHERE (PRINCIPAL IS NULL)';
        QuerX.ExecSQL;
        QuerX.SQL.Text := 'UPDATE PRODUTO_ESTOQUE SET ' + Cadastro.FieldByName('DESCRICAO').AsString + ' = 0 WHERE (' + Cadastro.FieldByName('DESCRICAO').AsString + ' IS NULL)';
        QuerX.ExecSQL;
        QuerX.SQL.Text := 'UPDATE PRODUTO_ESTOQUE SET PRINCIPAL = COALESCE(PRINCIPAL, 0) + COALESCE(' + Cadastro.FieldByName('DESCRICAO').AsString + ', 0)';
        QuerX.ExecSQL;
        QuerX.SQL.Text := 'ALTER TABLE PRODUTO_ESTOQUE DROP ' + Cadastro.FieldByName('DESCRICAO').AsString;
        QuerX.ExecSQL;
      finally
        FreeAndNil(QuerX);
      end;
      DS.DataSet.Delete;
      TransaFD.Commit;
      Ds.DataSet.Open;
      btnNovo.SetFocus;
    except
      btnCancelar.Click;
    end;
  end;
end;

procedure TFrmProduto_Estoque_Local.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  edtDescricao.Enabled := (Cadastro.FieldByName('DESCRICAO').AsString <> 'PRINCIPAL');
  btnAlterar.Visible := (Cadastro.FieldByName('DESCRICAO').AsString <> 'PRINCIPAL');
  btnExcluir.Visible := (Cadastro.FieldByName('DESCRICAO').AsString <> 'PRINCIPAL');
end;

procedure TFrmProduto_Estoque_Local.DSStateChange(Sender: TObject);
begin
  inherited;
  Descricao_Antiga := Cadastro.FieldByName('DESCRICAO').AsString;
end;

function TFrmProduto_Estoque_Local.VerificaDesc(ADesc: String): Boolean;
var
  I : Integer;
begin
  Result := False;
  //N�o pode ter menos de 3 ou mais de 15 d�gitos
  if (Length(ADesc) < 3) or (Length(ADesc) > 15) then
    Exit;

  //N�o pode iniciar com n�mero ou underline
  if CharInSet(ADesc[1], ['0'..'9','_']) then
    Exit;

  for I := 1 to Length(ADesc) do
  begin
    //Deve conter apenas letras, n�meros e underline
    if not CharInSet(AnsiUpperCase(ADesc[i])[1], ['A'..'Z', '0'..'9','_']) then
      Exit;
  end;
  Result := True;
end;

initialization
  RegisterClass(TFrmProduto_Estoque_Local);

end.
