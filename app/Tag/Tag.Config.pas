﻿unit Tag.Config;

interface

Uses
  Classes.APP;

const
  // GERAL
  Tag_Config_LIMITAR_CONSULTA_ = 1;
  TagWR_Config_First = Tag_Config_LIMITAR_CONSULTA_;
  Tag_Config_LIMITAR_CONSULTA_QUANT = 2;
  Tag_Config_NaoMostrarMensagemSair = 3;
  Tag_Config_Servidor = 4;
  Tag_Config_PESQUISA_AVANCADA = 5;
  Tag_Config_ESTOQUE_DUPLO = 6;
  Tag_Config_DESCRICAO_ESTOQUE_DUPLO = 7;
  Tag_Config_CASAS_DECIMAIS_QUANTIDADE = 8;
  Tag_Config_CASAS_DECIMAIS_FINANCEIRO = 9;
  Tag_Config_FOTOS_DO_SISTEMA_SERVIDOR = 10;
  Tag_Config_FOTOS_DO_SISTEMA = 11;
  Tag_Config_TIPO_BALANCO_AUTOMATICO = 12;

  // VENDAS
  Tag_Config_VENDA_ANEXOS_ITENS_PASTAS_SEPARADAS = 13;
  Tag_Config_VENDA_EXCLUIR_PREFIXO_OS_PARCELA_FINANCEIRO = 14;
  Tag_Config_VENDA_EXIBIR_DADOS_COLETA = 15;
  Tag_Config_VENDA_PEDIR_SENHA_ALTERA_VALOR = 16;
  Tag_Config_REMOVE_CODFABRICA = 17;
  Tag_Config_VENDA_COM_NOTA = 18;
  Tag_Config_NAO_UTILIZA_TABELA_PRECO_NO_TIPO_VENDA = 19;
  Tag_Config_NAO_PERMITE_NOME_DIFERENTE_PARCELA = 20;
  Tag_Config_NAO_PERMITE_VER_COMPOSICAO_VENDA = 21;
  Tag_Config_VALOR_MINIMO_TOTAL_ITEM = 22;
  Tag_Config_VENDA_TITULO_BOTOES_FATURAMENTO = 23;
  Tag_Config_VENDA_FINANCEIRO_CONTA_PADRAO = 24;
  Tag_Config_VENDA_LIMITE_DIAS_PARCELAS_VENCIDAS = 25;
  Tag_Config_VENDA_PESSOA_RESPONSAVEL_CODIGO = 26;
  Tag_Config_VENDA_PESSOA_RESPONSAVEL_SEQUENCIA = 27;
  Tag_Config_VENDA_PESSOA_RESPONSAVEL_TIPO = 28;
  Tag_Config_VENDA_NOME_ARQUIVO_PDF = 29;
  Tag_Config_VENDA_CAMINHO_ARQUIVO_PDF = 30;
  Tag_Config_VENDA_IMPEDIR_IMPRESSAO_NAO_FATURADA = 32;
  Tag_Config_VENDA_IMPRIMIR_VENDA_SEM_CNPJ_CPF = 33;
  Tag_Config_IMPRESSAO_DIRETA_MOSTRAR_TELA = 34;
  Tag_Config_VENDA_PLANO_CONTAS_VENDEDOR_CRIAR = 35;
  Tag_Config_VENDA_PLANO_CONTAS_VENDEDOR = 36;
  Tag_Config_VENDA_TELA_FRENTE_VERSO = 37;
  Tag_Config_VENDA_BALAO_QUANTIDADE_RESERVADA = 38;
  Tag_Config_VENDA_PERGUNTA_COMPOSICAO = 39;
  Tag_Config_VENDA_METODO_AGIL_GRADE = 41;
  Tag_Config_VENDA_MESMO_VALOR_PRODUTOS_GRADE = 42;
  Tag_Config_VENDA_ORDENA_GRADE_NOME = 43;
  Tag_Config_VENDA_MESMA_DESCRICAO_GRADE = 44;
  Tag_Config_VENDA_IMPEDIR_PARCELA_ABERTA = 45;
  Tag_Config_VENDA_PEDIR_SENHA_PARA_FATURAR = 46;
  Tag_Config_LIMITE_DESCONTO = 47;
  Tag_Config_VENDA_OBRIGAR_PERMITIDOPARA_PRODUCAO = 48;
  Tag_Config_VENDA_OBRIGAR_SITUACAO_PRODUCAO = 49;
  Tag_Config_VENDA_APROVAR_PRODUCAO = 50;
  Tag_Config_PRODUCAO_CENTRO_TRABALHO_PADRAO = 51;
  tag_Config_VENDA_PEDIR_SENHA_CREDITO_FATURA = 125;

  // PESSOAS
  Tag_Config_PESSOAS_OBRIGAR_CAMPOS_ENDERECO = 52;
  Tag_Config_USAR_NOME_FANTASIA = 53;
  Tag_Config_PESSOAS_OBRIGAR_CAMPO_FONE1 = 54;
  Tag_Config_PESSOAS_VISUALIZAR_VENDAS_TODAS_EMPRESAS = 55;
  Tag_Config_PESSOAS_CADASTRAR_PESSOAS_MESMO_CPFCNPJ = 56;
  Tag_Config_PONTO_MODELO = 57;
  Tag_Config_EMAIL_AUTO_CLIENTE = 58;
  Tag_Config_ASSUNTO_EMAIL_CLIENTE = 59;
  Tag_Config_TEXTO_EMAIL_CLIENTE = 60;
  Tag_Config_URL_COBRANCA = 61;
  Tag_Config_URL_SPC = 62;

  // PRODUTOS
  Tag_Config_PRODUTOS_ESTOQUE_RESERVADO_TODAS_EMPRESAS = 63;
  Tag_Config_PRODUTO_IMPEDIR_EAN_DUPLICADO = 64;
  Tag_Config_MARKUP = 65;
  Tag_Config_MEDIDA_1DIM_DESC = 66;
  Tag_Config_MEDIDA_2DIM_DESC = 67;
  Tag_Config_MEDIDA_3DIM_DESC = 68;
  Tag_Config_MEDIDA_1DIM_ABREV = 69;
  Tag_Config_MEDIDA_2DIM_ABREV = 70;
  Tag_Config_MEDIDA_3DIM_ABREV = 71;
  Tag_Config_MEDIDA_1DIM_INICIAL = 72;
  Tag_Config_MEDIDA_2DIM_INICIAL = 73;
  Tag_Config_MEDIDA_3DIM_INICIAL = 74;

  // FINANCEIRO
  Tag_Config_FINANCEIRO_PERMITEDOCUMENTOSDUPLICADOS = 75;
  Tag_Config_FINANCEIRO_PERMITE_PARCELAS_NAO_PAGAS = 76;
  Tag_Config_JUROS = 77;
  Tag_Config_MULTA = 78;
  Tag_Config_DIAS_TOLERANCIA = 79;

  // PRODUÇÃO
  Tag_Config_PRODUCAO_ARQUIVAR_OS_FINALIZADA = 80;
  Tag_Config_VERIFICA_FATURA_VENDA_PRODUCAO = 81;
  Tag_Config_PRODUCAO_INCLUIR_OS_LINHA_DO_TEMPO = 82;
  Tag_Config_PRODUCAO_VINCULA_HISTORICO = 83;

  // AGENDA
  Tag_Config_AGENDA_PRODUCAO_USAR_NUMERO_SEQUENCIA_NO_PROTOCOLO = 84;

  // CÓDIGO BARRAS
  Tag_Config_CODBARRAS_FANTASIA = 85;
  Tag_Config_CODBARRAS_LOGO = 86;

  // ASSOCIAÇÃO
  Tag_Config_FOTOS_RELATORIOS = 87;
  Tag_Config_ANEXOS_PESSOAS = 88;
  Tag_Config_FOTOS_VISTORIA = 89;
  Tag_Config_FOTOS_OCORRENCIA = 90;
  Tag_Config_VALORCADASTRO = 91;
  Tag_Config_VALORCOTA = 92;
  Tag_Config_FIPE_PERCENTUAL = 93;
  Tag_Config_COBERTURA = 94;
  Tag_Config_VALORTAXAADMISSAO = 95;
  Tag_Config_CODPLANOCONTAS_TAXAADMISSAO = 96;
  Tag_Config_VALORVISTORIACAMINHAO = 97;
  Tag_Config_CODPLANOCONTAS_VISTORIA = 98;
  Tag_Config_VALORVISTORIASEMIREBOQUE = 99;
  Tag_Config_CODPLANOCONTAS_CADASTRAMENTO = 100;
  Tag_Config_CODPLANOCONTAS_RATEIO_MEDIA = 101;
  Tag_Config_CIDADEUF_CARTORIO = 102;
  Tag_Config_DADOS_FIPE_EQUIPAMENTO = 103;

  // MANIFESTAÇÃO DO DESTINATÁRIO
  Tag_Config_NF_ENTRADA_ULTIMO_NSU = 104;

  // ENTRADA DE MERCADORIAS
  Tag_Config_DIR_NOTA_DE_IMPORTACAO = 105;
  Tag_Config_NF_VENCIMENTO_PARCELAS_COM_BASE_DATA_NOTA = 106;
  Tag_Config_NF_PARCELAS_PLANO_CONTAS_OBRIGATORIO = 107;
  Tag_Config_NF_PARCELAS_CONTA_OBRIGATORIO = 108;
  Tag_Config_NF_PARCELAS_TIPO_PAGAMENTO_OBRIGATORIO = 109;
  Tag_Config_CUSTO_MEDIO_PONDERADO = 110;
  Tag_Config_NF_ENTRADA_RENDIMENTO = 111;
  Tag_Config_NF_ENTRADA_ATUALIZA_COMPOSICAO = 112;
  Tag_Config_NF_PARCELAS_CONTA_PADRAO = 113;
  Tag_Config_NF_ENTRADA_PRODUTO_TIPO_DESCRICAO = 114;
  Tag_Config_NF_ENTRADA_PRODUTO_ESTOQUE_LOCAL = 115;

  // CAIXA
  Tag_Config_CAIXA_CONTROLE = 116;
  Tag_Config_CAIXA_PLANO_CONTAS_PADRAO_RETIRADA = 117;
  Tag_Config_CAIXA_PEDE_PERMISSAO_REMOVER_ITEM_VENDA = 118;
  Tag_Config_CAIXA_PEDE_PERMISSAO_CANCELAR_VENDA = 119;
  Tag_Config_CAIXA_IMPRIMIR_VENDA_APOS_FATURAMENTO = 120;

  // ALMOXARIFADO
  Tag_Config_ESTOQUE_PENDENTE_VENDA = 121;
  Tag_Config_ESTOQUE_PENDENTE_COMPRA = 122;
  Tag_Config_ESTOQUE_PENDENTE_PRODUCAO = 123;

  Tag_Config_FATURA_ORCAMENTO = 124;

  Tag_config_ESTOQUE_REQUISICAO_VENDA = 125;
  Tag_config_ESTOQUE_REQUISICAO_PRODUTO = 126;
  Tag_config_ESTOQUE_REQUISICAO_COMPRA = 127;
  Tag_config_ESTOQUE_REQUISICAO_PRODUCAO = 128;
  Tag_config_ESTOQUE_REQUISICAO_MOVIMENTO = 129;
  Tag_config_ESTOQUE_REQUISICAO_INVENTARIO = 130;
  Tag_Config_ATUALIZA_PRODUTO_FINAL = 131;

  TagWR_Config_Last = Tag_Config_ATUALIZA_PRODUTO_FINAL;


procedure RegistraWR_Config(ATag_WR_APP, ATagWR_Config: integer; ASub, AConfig, ADescricao, AObservacao, ATipo: string; ADica: string = '');

Var
  AWR_Config : array [TagWR_Config_First..TagWR_Config_Last] of TWR_Config;

implementation
   
procedure RegistraWR_Config(ATag_WR_APP, ATagWR_Config: integer; ASub, AConfig, ADescricao, AObservacao, ATipo: string; ADica: string = '');
begin
  AWR_Config[ATagWR_Config]              := TWR_Config.Create;
  AWR_Config[ATagWR_Config].TagWR_APP    := ATag_WR_APP;
  AWR_Config[ATagWR_Config].TagWR_Config := ATagWR_Config;
  AWR_Config[ATagWR_Config].Sub          := ASub;
  AWR_Config[ATagWR_Config].Config       := AConfig;
  AWR_Config[ATagWR_Config].Descricao    := ADescricao;
  AWR_Config[ATagWR_Config].Observacao   := AObservacao;
  AWR_Config[ATagWR_Config].Tipo         := ATipo;
  AWR_Config[ATagWR_Config].Dica         := ADica;
end;
  
end.