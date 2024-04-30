unit MesclarPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinscxPCPainter, Vcl.Menus, cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutLookAndFeels, cxClasses, IBX.IBDatabase, uControleWR, UCBase, System.Actions, Vcl.ActnList, Classes.WR,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmMesclarPessoas = class(TForm)
    LayoutControlMesclarCadastro: TdxLayoutControl;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    EdtMesclDuplCorreto�Pessoas: TcxButtonEdit;
    LblMesclDuplCorreto�Pessoas�FANTASIA: TcxLabel;
    LblMesclDuplCorreto�Pessoas�CNPJCPF: TcxLabel;
    EdtMesclDuplDuplicado�Pessoas: TcxButtonEdit;
    LblMesclDuplDuplicado�Pessoas�FANTASIA: TcxLabel;
    LblMesclDuplDuplicado�Pessoas�CNPJCPF: TcxLabel;
    cxLabel1: TcxLabel;
    LayoutControlMesclarCadastroGroup_Root: TdxLayoutGroup;
    LayoutControlMesclarCadastroGroup3: TdxLayoutGroup;
    LayoutControlMesclarCadastroItem2: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    LayoutControlMesclarCadastroGroup5: TdxLayoutGroup;
    LayoutControlMesclarCadastroGroup4: TdxLayoutGroup;
    LayoutControlMesclarCadastroGroup6: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    LayoutControlMesclarCadastroItem3: TdxLayoutItem;
    LayoutControlMesclarCadastroItem8: TdxLayoutItem;
    LayoutControlMesclarCadastroItem7: TdxLayoutItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    LayoutControlMesclarCadastroGroup7: TdxLayoutGroup;
    LayoutControlMesclarCadastroGroup2: TdxLayoutGroup;
    LayoutControlMesclarCadastroItem4: TdxLayoutItem;
    LayoutControlMesclarCadastroItem6: TdxLayoutItem;
    LayoutControlMesclarCadastroLabeledItem2: TdxLayoutLabeledItem;
    LayoutControlMesclarCadastroItem5: TdxLayoutItem;
    LayoutControlMesclarCadastroItem9: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    UCControls1: TUCControls;
    LayoutControlMesclarCadastroItem1: TdxLayoutItem;
    LblMesclDuplCorreto�Pessoas�FONE1: TcxLabel;
    LayoutControlMesclarCadastroItem10: TdxLayoutItem;
    LblMesclDuplDuplicado�Pessoas�FONE1: TcxLabel;
    LayoutControlMesclarCadastroItem11: TdxLayoutItem;
    LblMesclDuplDuplicado�Pessoas�EMAIL: TcxLabel;
    LayoutControlMesclarCadastroItem12: TdxLayoutItem;
    LblMesclDuplCorreto�Pessoas�EMAIL: TcxLabel;
    LayoutControlMesclarCadastroItem13: TdxLayoutItem;
    cxButton3: TcxButton;
    LayoutControlMesclarCadastroItem14: TdxLayoutItem;
    cxButton4: TcxButton;
    LayoutControlMesclarCadastroItem15: TdxLayoutItem;
    cxButton5: TcxButton;
    LayoutControlMesclarCadastroItem16: TdxLayoutItem;
    LblMesclDuplDuplicado�Pessoas�DATACADASTRO: TcxLabel;
    LayoutControlMesclarCadastroItem17: TdxLayoutItem;
    LblMesclDuplCorreto�Pessoas�DATACADASTRO: TcxLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    FControleWR : TControleWR;
    FCodPessoaDuplicada: string;
    FCodPessoaManter: string;
    procedure SetCodPessoaDuplicada(const Value: string);
    procedure SetCodPessoaManter(const Value: string);
    { Private declarations }
  public
    { Public declarations }

    property CodPessoaManter: string read FCodPessoaManter write SetCodPessoaManter;
    property CodPessoaDuplicada: string read FCodPessoaDuplicada write SetCodPessoaDuplicada;
  end;

//var
//  FrmMesclarPessoas: TFrmMesclarPessoas;

implementation

uses
  Aguarde, UnitFuncoes, wrFuncoes;

{$R *.dfm}

procedure TFrmMesclarPessoas.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmMesclarPessoas.cxButton2Click(Sender: TObject);
var
  ATransa : TIBTransaction;
  ACodPessoaOriginal, ACodPessoaDuplicada : string;
  AFrmAguarde : TFrmAguarde;
begin
  inherited;
  if ShowMessageWR('Tem certeza que deseja continuar com a Mesclagem? Este procedimento N�o poder� ser desfeito pelo ' +
                   'sistema.', MB_ICONQUESTION) <> mrYes then
    Exit;

  if (LblMesclDuplCorreto�Pessoas�FANTASIA.Caption = '') or
     (LblMesclDuplDuplicado�Pessoas�FANTASIA.Caption = '') then
  begin
    ShowMessageWR('Selecione dois cadastros v�lidos para continuar.');
    Exit;
  end;

  ATransa := GeraTransacao;
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.Show;
    AFrmAguarde.Mensagem := 'Efetuando mesclagem...';

    ACodPessoaOriginal  := FControleWR.GetCodigoPessoa(EdtMesclDuplCorreto�Pessoas);
    ACodPessoaDuplicada := FControleWR.GetCodigoPessoa(EdtMesclDuplDuplicado�Pessoas);
    PessoaMesclarCadastros(ATransa, ACodPessoaOriginal, ACodPessoaDuplicada);

    if ATransa.InTransaction then
      ATransa.Commit;
  finally
    ATransa.Free;
    AFrmAguarde.Free;
  end;
  ShowMessageWR('Cadastros mesclados com sucesso.');
  Close;
end;

procedure TFrmMesclarPessoas.cxButton3Click(Sender: TObject);
var
  ACodPessoaOriginal, ACodPessoaDuplicada : string;
begin
   ACodPessoaOriginal  := FControleWR.GetCodigoPessoa(EdtMesclDuplCorreto�Pessoas);
   ACodPessoaDuplicada := FControleWR.GetCodigoPessoa(EdtMesclDuplDuplicado�Pessoas);
   SetCodPessoaManter(ACodPessoaDuplicada);
   SetCodPessoaDuplicada(ACodPessoaOriginal);
end;

procedure TFrmMesclarPessoas.cxButton4Click(Sender: TObject);
var
  AKey : Word;
begin
  AKey := VK_F3;
  EdtMesclDuplCorreto�Pessoas.OnKeyDown(Sender,AKey,[]);
end;

procedure TFrmMesclarPessoas.cxButton5Click(Sender: TObject);
var
  AKey : Word;
begin
  AKey := VK_F3;
  EdtMesclDuplDuplicado�Pessoas.OnKeyDown(Sender,AKey,[]);
end;

procedure TFrmMesclarPessoas.FormCreate(Sender: TObject);
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
end;

procedure TFrmMesclarPessoas.FormDestroy(Sender: TObject);
begin
  FControleWR.Free;
end;

procedure TFrmMesclarPessoas.SetCodPessoaDuplicada(const Value: string);
var
  APessoaRetorno : TPessoaRetorno;
begin
  FCodPessoaDuplicada := Value;
  if FCodPessoaDuplicada <> '' then
  begin
    APessoaRetorno := TPessoaRetorno.Create;
    PessoaBusca(nil, FCodPessoaDuplicada, APessoaRetorno, 'CLI');
    FControleWR.FindComponente(EdtMesclDuplDuplicado�Pessoas).ValorComponentePessoa := APessoaRetorno;
  end else
    FControleWR.FindComponente(EdtMesclDuplDuplicado�Pessoas).ValorComponentePessoa := nil;
end;

procedure TFrmMesclarPessoas.SetCodPessoaManter(const Value: string);
var
  APessoaRetorno : TPessoaRetorno;
begin
  FCodPessoaManter := Value;
  if FCodPessoaManter <> '' then
  begin
    APessoaRetorno := TPessoaRetorno.Create;
    PessoaBusca(nil, FCodPessoaManter, APessoaRetorno, 'CLI');
    FControleWR.FindComponente(EdtMesclDuplCorreto�Pessoas).ValorComponentePessoa := APessoaRetorno;
  end else
    FControleWR.FindComponente(EdtMesclDuplCorreto�Pessoas).ValorComponentePessoa := nil;
end;

end.
