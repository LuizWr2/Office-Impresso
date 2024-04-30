unit Utils.Boleto.Retorno;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows,Vcl.Controls,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  DateUtils, Utils.Boleto, ACBrBoletoRetorno;


// Rotinas internas
function UtilsBoletoRetorno_IsLiquidado(ATipo: TACBrTipoOcorrencia): Boolean;
function UtilsBoletoRetorno_ListDeRetornoAnteriores(ACodFinanceiro_Boleto: integer; ANossoNumero: String):String;
//function UtilsBoletoRetorno_AchaoORetornoPorBanco(ATransa :TFDTransaction; AFinanceiro_Boleto: TFDQuery; ADataAquivo: TDate; ANumeroArquivo, ACodBanco : Integer): TFDQuery;

implementation

Uses SQL.Financeiro_Boleto_Historico;

// Rotinas internas

function UtilsBoletoRetorno_IsLiquidado(ATipo: TACBrTipoOcorrencia): Boolean;
begin
  Result := False;
  case ATipo of
    toRetornoLiquidadoSemRegistro,            // 05-Liquidado sem registro (carteira 17-tipo4)
    toRetornoLiquidado,                       // 06-Liquida��o Normal
    toRetornoLiquidadoPorConta,               // 07-Liquida��o por Conta
    toRetornoLiquidadoEmCartorio,             // 15-Liquida��o em Cart�rio
    toRetornoTituloPagoEmCheque,              // 46�T�tulo pago com cheque, aguardando compensa��o
    toRetornoLiquidadoAposBaixaOuNaoRegistro: // 17-Liquida��o Ap�s Baixa ou Liquida��o de T�tulo N�o Registrado
      Result := True;
  end;
//    if (ATitulo.OcorrenciaOriginal.Tipo = ACBrBoleto.toRetornoTransferenciaCarteiraEntrada) then
//      Result := True
end;

function UtilsBoletoRetorno_ListDeRetornoAnteriores(ACodFinanceiro_Boleto: integer; ANossoNumero: String):String;
Var
  QuerX : TFDQuery;
begin
  Result:='';
  QuerX := SQLFinanceiro_Boleto_Historico_ListaRetornosAnteriores(ANossoNumero, ACodFinanceiro_Boleto);
  try
    QuerX.First;
    while not QuerX.Eof do
    begin
      if Result <> '' then
        Result := Result + ' - ';
      Result := Result + QuerX.Fields[0].AsString;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

//function UtilsBoletoRetorno_AchaoORetornoPorBanco(ATransa :TFDTransaction; AFinanceiro_Boleto: TFDQuery; ADataAquivo: TDate; ANumeroArquivo, ACodBanco : Integer): TFDQuery;
//Var
//  AValueLocate: Variant;
//  ACampoLocate: String;
//begin
//  if ANumeroArquivo > 0 then           // Criar Chave e fazer um update
//  begin
//    ACampoLocate := 'CODIGO';
//    AValueLocate := ANumeroArquivo;
//    if ACodBanco = 85 then
//    begin
//      // Na CECRED, o n�mero do arquivo � sequencial por dia, cada dia come�a em 1
//      ACampoLocate := 'DATA_ARQUIVO;CODIGO';
//      AValueLocate := VarArrayOf([ADataAquivo, ANumeroArquivo]);
//    end;
//  end
//  else
//  begin
//    ACampoLocate := 'DATA_ARQUIVO';
//    AValueLocate := ADataAquivo;
//  end;
//  // Aqui deve fechar e abrir o correto via sql e retornar a query
//  Result := AFinanceiro_Boleto;
////  AFinanceiro_Boleto.Locate(ACampoLocate, AValueLocate, []);
//end;

end.

