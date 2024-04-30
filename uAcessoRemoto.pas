//
// Created by the DataSnap proxy generator.
// 30/08/2012 16:25:20
// 

unit uAcessoRemoto;

interface

uses
  DBXCommon, DBXJSON, DSProxy, Classes, SysUtils, DB, System.JSON;

type
  TSvmEquipamentoClient = class(TDSAdminClient)
  private
    FProcessaDadosClienteCommand: TDBXCommand;
    FVerificaVersaoDisponivelCommand: TDBXCommand;
    FGetConfiguracoesTerminal: TDBXCommand;
    FSetConfiguracoesTerminalCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function ProcessaDadosCliente(const ADadosJS: TJSONArray): string;
    function VerificaVersaoDisponivel(const ACNPJ: string): string;
    function VerificaVersao(const ACNPJ: string): string;
    function GetConfiguracoesTerminal(const ASerial: string): string;
    procedure SetConfiguracoesTerminal(const ASerial, ACaminhoBanco: string);
  end;

implementation

function TSvmEquipamentoClient.ProcessaDadosCliente(const ADadosJS: TJSONArray): string;
begin
  if FProcessaDadosClienteCommand = nil then
  begin
    FProcessaDadosClienteCommand := FDBXConnection.CreateCommand;
    FProcessaDadosClienteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FProcessaDadosClienteCommand.Text := 'TSvmEquipamento.ProcessaDadosCliente';
    FProcessaDadosClienteCommand.Prepare;
  end;
  FProcessaDadosClienteCommand.Parameters[0].Value.SetJSONValue(ADadosJS, FInstanceOwner);

  FProcessaDadosClienteCommand.ExecuteUpdate;

  Result := FProcessaDadosClienteCommand.Parameters[1].Value.GetWideString;
end;

procedure TSvmEquipamentoClient.SetConfiguracoesTerminal(const ASerial, ACaminhoBanco: string);
begin
  if FSetConfiguracoesTerminalCommand = nil then
  begin
    FSetConfiguracoesTerminalCommand := FDBXConnection.CreateCommand;
    FSetConfiguracoesTerminalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetConfiguracoesTerminalCommand.Text := 'TSvmEquipamento.SetConfiguracoesTerminal';
    FSetConfiguracoesTerminalCommand.Prepare;
  end;
  FSetConfiguracoesTerminalCommand.Parameters[0].Value.SetWideString(ASerial);
  FSetConfiguracoesTerminalCommand.Parameters[1].Value.SetWideString(ACaminhoBanco);
  FSetConfiguracoesTerminalCommand.ExecuteUpdate;
end;

function TSvmEquipamentoClient.VerificaVersao(const ACNPJ: string): string;
begin
  {Formato do retorno:
          A fun��o VerificaVersao retorna uma string dividida em dois blocos, separados por ';'.
          O primeiro bloco pode conter 'N' para quando n�o h� atualiza��o ou pode conter a vers�o dispon�vel
          para download. O segundo bloco contem a vers�o m�nima obrigat�ria para o cliente.
          A fun��o SEMPRE retornar� uma vers�o no primeiro bloco caso o cliente precise atualizar, ou seja,
          se o primeiro bloco for 'N', o segundo bloco torna-se dispens�vel (in�til).
          Ex: '2012.0.1.100;2012.0.0.1.99'   ou   'N;2012.0.1.100'

          Este formato pode ser expans�vel, adicionando-se mais blocos de informa��o sem perder compatibilidade
          com clientes antigos.
      }

  if FVerificaVersaoDisponivelCommand = nil then
  begin
    FVerificaVersaoDisponivelCommand := FDBXConnection.CreateCommand;
    FVerificaVersaoDisponivelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FVerificaVersaoDisponivelCommand.Text := 'TSvmEquipamento.VerificaVersao';
    FVerificaVersaoDisponivelCommand.Prepare;
  end;
  FVerificaVersaoDisponivelCommand.Parameters[0].Value.SetWideString(ACNPJ);
  FVerificaVersaoDisponivelCommand.ExecuteUpdate;
  Result := FVerificaVersaoDisponivelCommand.Parameters[1].Value.GetWideString;
end;

function TSvmEquipamentoClient.VerificaVersaoDisponivel(const ACNPJ: string): string;
begin
  //Fun��o VerificaVersaoDisponivel desativada. Esta fun��o foi substitu�da pela fun��o VerificaVersao para aumentar a compatibilidade.
      //Manter esta linha para identifica��o, pois esta fun��o ainda permanece no servidor para compatibilidade com clientes
      //na vers�o 2012.0.1.98
      //Res := Remoto.VerificaVersaoDisponivel(AStrEnvio);

  if FVerificaVersaoDisponivelCommand = nil then
  begin
    FVerificaVersaoDisponivelCommand := FDBXConnection.CreateCommand;
    FVerificaVersaoDisponivelCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FVerificaVersaoDisponivelCommand.Text := 'TSvmEquipamento.VerificaVersaoDisponivel';
    FVerificaVersaoDisponivelCommand.Prepare;
  end;
  FVerificaVersaoDisponivelCommand.Parameters[0].Value.SetWideString(ACNPJ);
  FVerificaVersaoDisponivelCommand.ExecuteUpdate;
  Result := FVerificaVersaoDisponivelCommand.Parameters[1].Value.GetWideString;
end;

function TSvmEquipamentoClient.GetConfiguracoesTerminal(const ASerial: string): string;
begin
  if FGetConfiguracoesTerminal = nil then
  begin
    FGetConfiguracoesTerminal := FDBXConnection.CreateCommand;
    FGetConfiguracoesTerminal.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetConfiguracoesTerminal.Text := 'TSvmEquipamento.GetConfiguracoesTerminal';
    FGetConfiguracoesTerminal.Prepare;
  end;
  FGetConfiguracoesTerminal.Parameters[0].Value.SetWideString(ASerial);
  FGetConfiguracoesTerminal.ExecuteUpdate;
  Result := FGetConfiguracoesTerminal.Parameters[1].Value.GetWideString;
end;

constructor TSvmEquipamentoClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TSvmEquipamentoClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TSvmEquipamentoClient.Destroy;
begin
  FreeAndNil(FProcessaDadosClienteCommand);
  FreeAndNil(FVerificaVersaoDisponivelCommand);
  FreeAndNil(FSetConfiguracoesTerminalCommand);
  inherited;
end;

end.
