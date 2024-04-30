﻿unit Tag.Valor_Inicial;

interface

Uses
  Classes.APP;

const
//TAPP_Campo

  TagValorInicial_ACABAMENTO_CODIGO = 1;
  TagWR_Valor_Inicial_First = TagValorInicial_ACABAMENTO_CODIGO;
  TagValorInicial_ACABAMENTO_DESCRICAO = 2;
  TagValorInicial_ACABAMENTO_ATIVO = 3;
  TagValorInicial_AGENDA_TITULO_CODIGO = 4;
  TagValorInicial_AGENDA_TITULO_DESCRICAO = 5;
  TagValorInicial_AGENDA_TITULO_ATIVO = 6;
  TagValorInicial_AGENDA_TITULO_COLOR = 7;
  TagValorInicial_AGENDA_TITULO_IMAGEINDEX = 8;
  TagValorInicial_AGENDA_TITULO_TITULO_FORMATO = 9;
  TagValorInicial_AGENDA_TITULO_MOSTRAR_HORARIO = 10;
  TagValorInicial_AGENDA_TITULO_DT_INICIAL = 11;
  TagValorInicial_AGENDA_TITULO_DT_FINAL = 12;
  TagValorInicial_AGENDA_TITULO_MINUTOS = 13;
  TagValorInicial_ARQUIVOS_RELATORIO_CODIGO = 14;
  TagValorInicial_ARQUIVOS_RELATORIO_ATIVO = 15;
  TagValorInicial_ARQUIVOS_RELATORIO_DESCRICAO = 16;
  TagValorInicial_ATALHO_RAPIDO_CODIGO = 17;
  TagValorInicial_ATALHO_RAPIDO_ATIVO = 18;
  TagValorInicial_ATALHO_RAPIDO_DESCRICAO = 19;
  TagValorInicial_BANCOS_CODIGO = 20;
  TagValorInicial_BANCOS_ATIVO = 21;
  TagValorInicial_BANCOS_DESCRICAO = 22;
  TagValorInicial_CENTRO_TRABALHO_CODIGO = 23;
  TagValorInicial_CENTRO_TRABALHO_ATIVO = 24;
  TagValorInicial_CENTRO_TRABALHO_DESCRICAO = 25;
  TagValorInicial_CENTRO_TRABALHO_SUBNIVEL = 26;
  TagValorInicial_CIDADES_CODIGO = 27;
  TagValorInicial_CIDADES_ATIVO = 28;
  TagValorInicial_CIDADES_PAIS = 29;
  TagValorInicial_CIDADES_CODPAIS = 30;
  TagValorInicial_CIDADES_DESCRICAO = 31;
  TagValorInicial_CONCILIACAO_BANCARIA_CODIGO = 32;
  TagValorInicial_CONCILIACAO_BANCARIA_ATIVO = 33;
  TagValorInicial_CONCILIACAO_BANCARIA_DESCRICAO = 34;
  TagValorInicial_CONDICAOPAGTO_CODIGO = 35;
  TagValorInicial_CONDICAOPAGTO_ATIVO = 36;
  TagValorInicial_CONDICAOPAGTO_DESCRICAO = 37;
  TagValorInicial_CONDICAOPAGTO_TIPO = 38;
  TagValorInicial_CONDICAOPAGTO_PARCELAS = 39;
  TagValorInicial_CONDICAOPAGTO_INTERVALO = 40;
  TagValorInicial_CONDICAOPAGTO_TIPO_UTILIZACAO = 41;
  TagValorInicial_CONDICAOPAGTO_TIPOPAGTO = 42;
  TagValorInicial_CONDICAOPAGTO_FATOR_COMERCIAL = 43;
  TagValorInicial_CONDICAOPAGTO_ENTRADA = 44;
  TagValorInicial_CONDICAOPAGTO_DESCONTO_ACRESCIMO = 45;
  TagValorInicial_CONFIGURACAO_CONF = 46;
  TagValorInicial_CONFIGURACAO_ACAO_DESCRICAO = 47;
  TagValorInicial_CONFIGURACAO_ACOES_CODIGO = 48;
  TagValorInicial_CONFIGURACAO_ACOES_ATIVO = 49;
  TagValorInicial_CONFIGURACAO_AGRUPAMENTO_CODIGO = 50;
  TagValorInicial_CONFIGURACAO_AGRUPAMENTO_DESCRICAO = 51;
  TagValorInicial_CONFIGURACAO_AGRUPAMENTO_ATIVO = 52;
  TagValorInicial_CONFIGURACAO_COMPONENTE_CODIGO = 53;
  TagValorInicial_CONFIGURACAO_COMPONENTE_ATIVO = 54;
  TagValorInicial_CONFIGURACAO_COMPONENTE_DESCRICAO = 55;
  TagValorInicial_CONFIGURACAO_FILTRO_CODIGO = 56;
  TagValorInicial_CONFIGURACAO_FILTRO_DESCRICAO = 57;
  TagValorInicial_CONFIGURACAO_FILTRO_ATIVO = 58;
  TagValorInicial_CONFIGURACAO_REGRA_CODIGO = 59;
  TagValorInicial_CONFIGURACAO_REGRA_ATIVO = 60;
  TagValorInicial_CONFIGURACAO_REGRA_DESCRICAO = 61;
  TagValorInicial_CONTAS_CODIGO = 62;
  TagValorInicial_CONTAS_ATIVO = 63;
  TagValorInicial_CONTAS_DESCRICAO = 64;
  TagValorInicial_COR_CODIGO = 65;
  TagValorInicial_COR_DESCRICAO = 66;
  TagValorInicial_COR_ATIVO = 67;
  TagValorInicial_DASHBOARDS_CODIGO = 68;
  TagValorInicial_DASHBOARDS_DESCRICAO = 69;
  TagValorInicial_DASHBOARDS_ATIVO = 70;
  TagValorInicial_DICA_CODIGO = 71;
  TagValorInicial_DICA_DESCRICAO = 72;
  TagValorInicial_DICA_ATIVO = 73;
  TagValorInicial_DRE_CODIGO = 74;
  TagValorInicial_DRE_ATIVO = 75;
  TagValorInicial_DRE_DESCRICAO = 76;
  TagValorInicial_DRE_CLASSIFICACAO_CODIGO = 77;
  TagValorInicial_DRE_CLASSIFICACAO_ATIVO = 78;
  TagValorInicial_DRE_CLASSIFICACAO_DESCRICAO = 79;
  TagValorInicial_EMAIL_MASSA_CODIGO = 80;
  TagValorInicial_EMAIL_MASSA_ATIVO = 81;
  TagValorInicial_EMAIL_MASSA_DESCRICAO = 82;
  TagValorInicial_EMAIL_MODELO_CODIGO = 83;
  TagValorInicial_EMAIL_MODELO_ATIVO = 84;
  TagValorInicial_EMAIL_MODELO_DESCRICAO = 85;
  TagValorInicial_EMPRESA_CODIGO = 86;
  TagValorInicial_EMPRESA_ATIVO = 87;
  TagValorInicial_EMPRESA_RAZAOSOCIAL = 88;
  TagValorInicial_EMPRESA_NFCE_PRODUCAO_ID = 89;
  TagValorInicial_EMPRESA_NFCE_HOMOLOGACAO_ID = 90;
  TagValorInicial_EMPRESA_TEM_NF_EMAIL_ENVIO = 91;
  TagValorInicial_EMPRESA_TEM_NF_EMAIL_ENVIO_NFSE = 92;
  TagValorInicial_EMPRESA_NFE_DANFE = 93;
  TagValorInicial_EMPRESA_NFE_PATH = 94;
  TagValorInicial_EMPRESA_NF_EMAIL_ASSUNTO = 95;
  TagValorInicial_EMPRESA_NF_EMAIL_MENSAGEM = 96;
  TagValorInicial_EMPRESA_FUSO_EMISSAO = 97;
  TagValorInicial_EMPRESA_FUSO_CANCELAMENTO = 98;
  TagValorInicial_EMPRESA_FUSO_CCE = 99;
  TagValorInicial_EMPRESA_FUSO_INUTILIZACAO = 100;
  TagValorInicial_EMPRESA_PODE_NFE_CNPJ_CONTADOR = 101;
  TagValorInicial_EMPRESA_PODE_NFE_CNPJ_DESENVOLVEDOR = 102;
  TagValorInicial_EMPRESA_NFSE_DANFE = 103;
  TagValorInicial_EMPRESA_CNPJCPF = 104;
  TagValorInicial_EMPRESA_INSCIDENT = 105;
  TagValorInicial_EMPRESA_Fantasia = 106;
  TagValorInicial_EMPRESA_Fone1 = 107;
  TagValorInicial_EMPRESA_CEP = 108;
  TagValorInicial_EMPRESA_Endereco = 109;
  TagValorInicial_EMPRESA_NUMERO = 110;
  TagValorInicial_EMPRESA_BAIRRO = 111;
  TagValorInicial_EMPRESA_CodPais = 112;
  TagValorInicial_EMPRESA_Pais = 113;
  TagValorInicial_EMPRESA_CodCidade = 114;
  TagValorInicial_EMPRESA_Cidade = 115;
  TagValorInicial_EMPRESA_UF = 116;
  TagValorInicial_EMPRESA_EMAIL = 117;
  TagValorInicial_EMPRESA_IM = 118;
  TagValorInicial_EMPRESA_CNAE = 119;
  TagValorInicial_EMPRESA_NFSE_SENHA = 120;
  TagValorInicial_EMPRESA_TEM_CERTIFICADO = 121;
  TagValorInicial_EMPRESA_NFSE_USUARIO = 122;
  TagValorInicial_FAMILIA_CODIGO = 123;
  TagValorInicial_FAMILIA_DESCRICAO = 124;
  TagValorInicial_FAMILIA_ATIVO = 125;
  TagValorInicial_FOLHA_PAGAMENTO_CODIGO = 126;
  TagValorInicial_FOLHA_PAGAMENTO_ATIVO = 127;
  TagValorInicial_FOLHA_PAGAMENTO_DESCRICAO = 128;
  TagValorInicial_FOLHA_PAGAMENTO_GRUPO_CODIGO = 129;
  TagValorInicial_FOLHA_PAGAMENTO_GRUPO_ATIVO = 130;
  TagValorInicial_FOLHA_PAGAMENTO_GRUPO_DESCRICAO = 131;
  TagValorInicial_FORMULA_PERFIL_CODIGO = 132;
  TagValorInicial_FORMULA_PERFIL_DESCRICAO = 133;
  TagValorInicial_FORMULA_PERFIL_ATIVO = 134;
  TagValorInicial_FORMULAS_CODIGO = 135;
  TagValorInicial_FORMULAS_DESCRICAO = 136;
  TagValorInicial_FORMULAS_ATIVO = 137;
  TagValorInicial_LOCAL_CODIGO = 138;
  TagValorInicial_LOCAL_DESCRICAO = 139;
  TagValorInicial_LOCAL_ATIVO = 140;
  TagValorInicial_MENSALIDADE_CODIGO = 141;
  TagValorInicial_MENSALIDADE_DESCRICAO = 142;
  TagValorInicial_MENSALIDADE_ATIVO = 143;
  TagValorInicial_META_CODIGO = 144;
  TagValorInicial_META_ATIVO = 145;
  TagValorInicial_META_DESCRICAO = 146;
  TagValorInicial_NF_CEST_CODIGO = 147;
  TagValorInicial_NF_CEST_ATIVO = 148;
  TagValorInicial_NF_CEST_DESCRICAO = 149;
  TagValorInicial_NF_CNAE_CODIGO = 150;
  TagValorInicial_NF_CNAE_ATIVO = 151;
  TagValorInicial_NF_CNAE_DESCRICAO = 152;
  TagValorInicial_NF_CST_CODIGO = 153;
  TagValorInicial_NF_CST_ATIVO = 154;
  TagValorInicial_NF_CST_DESCRICAO = 155;
  TagValorInicial_NF_ENTRADA_CODIGO = 156;
  TagValorInicial_NF_ENTRADA_ATIVO = 157;
  TagValorInicial_NF_ENTRADA_GERA_FINANCEIRO = 158;
  TagValorInicial_NF_ENTRADA_ATUALIZA_ESTOQUE = 159;
  TagValorInicial_NF_ENTRADA_TIPO = 160;
  TagValorInicial_NF_ENTRADA_ENVIA_FINANCEIRO = 161;
  TagValorInicial_NF_ENTRADA_ENVIA_ESTOQUE = 162;
  TagValorInicial_NF_ENTRADA_DATA = 163;
  TagValorInicial_NF_ENTRADA_DT_NOTA = 164;
  TagValorInicial_NF_ENTRADA_PODE_RATEAR_FRETE_DESC_OUTRO = 165;
  TagValorInicial_NF_ENTRADA_PRODUTOS_NF_UNIDADE = 166;
  TagValorInicial_NF_ERROS_CODIGO = 167;
  TagValorInicial_NF_ERROS_DESCRICAO = 168;
  TagValorInicial_NF_ERROS_ATIVO = 169;
  TagValorInicial_NF_NATUREZA_OPERACAO_CODIGO = 170;
  TagValorInicial_NF_NATUREZA_OPERACAO_DESCRICAO = 171;
  TagValorInicial_NF_NATUREZA_OPERACAO_ATIVO = 172;
  TagValorInicial_NF_NCM_CODIGO = 173;
  TagValorInicial_NF_NCM_DESCRICAO = 174;
  TagValorInicial_NF_NCM_TIPO = 175;
  TagValorInicial_NF_NCM_EX_TIPI = 176;
  TagValorInicial_NF_PROVEDOR_CODIGO = 177;
  TagValorInicial_NF_PROVEDOR_DESCRICAO = 178;
  TagValorInicial_NF_PROVEDOR_ATIVO = 179;
  TagValorInicial_NOTA_FISCAL_CODIGO = 180;
  TagValorInicial_NOTA_FISCAL_ATIVO = 181;
  TagValorInicial_NOTA_FISCAL_PRODUTO_CODIGO = 182;
  TagValorInicial_NOTA_FISCAL_PRODUTO_ATIVO = 183;
  TagValorInicial_PESSOAS_CODIGO = 184;
  TagValorInicial_PESSOAS_ATIVO = 185;
  TagValorInicial_PESSOAS_TIPO_CONTRIBUINTE = 186;
  TagValorInicial_PESSOAS_DATACADASTRO = 187;
  TagValorInicial_PESSOAS_ETIQUETA = 188;
  TagValorInicial_PESSOAS_CONSUMIDOR_FINAL = 189;
  TagValorInicial_PESSOAS_ISS_RETIDO = 190;
  TagValorInicial_PESSOAS_CRT = 191;
  TagValorInicial_PESSOAS_LIMITE_DESCONTO = 192;
  TagValorInicial_PESSOAS_RAZAOSOCIAL = 193;
  TagValorInicial_PESSOAS_ENDERECO = 194;
  TagValorInicial_PESSOAS_BAIRRO = 195;
  TagValorInicial_PESSOAS_CODCIDADE = 196;
  TagValorInicial_PESSOAS_UF = 197;
  TagValorInicial_PESSOAS_FONE1 = 198;
  TagValorInicial_PESSOAS_NUMERO = 199;
  TagValorInicial_PESSOAS_CEP = 200;
  TagValorInicial_PESSOAS_GRUPO_CODIGO = 201;
  TagValorInicial_PESSOAS_GRUPO_DESCRICAO = 202;
  TagValorInicial_PESSOAS_GRUPO_ATIVO = 203;
  TagValorInicial_PESSOAS_TIPO_CODIGO = 204;
  TagValorInicial_PESSOAS_TIPO_DESCRICAO = 205;
  TagValorInicial_PESSOAS_TIPO_ATIVO = 206;
  TagValorInicial_PLANOCONTAS_CODIGO = 207;
  TagValorInicial_PLANOCONTAS_ATIVO = 208;
  TagValorInicial_PLANOCONTAS_TIPO = 209;
  TagValorInicial_PLANOCONTAS_TIPO_CUSTO = 210;
  TagValorInicial_PRODUCAO_CODIGO = 211;
  TagValorInicial_PRODUCAO_ATIVO = 212;
  TagValorInicial_PRODUCAO_DT_EMISSAO = 213;
  TagValorInicial_PRODUCAO_DESCRICAO = 214;
  TagValorInicial_PRODUCAO_ESTAGIO_CODIGO = 215;
  TagValorInicial_PRODUCAO_ESTAGIO_ATIVO = 216;
  TagValorInicial_PRODUCAO_ESTAGIO_DESCRICAO = 217;
  TagValorInicial_PRODUCAO_MARCADOR_CODIGO = 218;
  TagValorInicial_PRODUCAO_MARCADOR_DESCRICAO = 219;
  TagValorInicial_PRODUCAO_MARCADOR_ATIVO = 220;
  TagValorInicial_PRODUCAO_PRIORIDADE_CODIGO = 221;
  TagValorInicial_PRODUCAO_PRIORIDADE_DESCRICAO = 222;
  TagValorInicial_PRODUCAO_PRIORIDADE_ATIVO = 223;
  TagValorInicial_PRODUCAO_PRODUTO_CODIGO = 224;
  TagValorInicial_PRODUCAO_ROTEIRO_CODIGO = 225;
  TagValorInicial_PRODUCAO_ROTEIRO_DESCRICAO = 226;
  TagValorInicial_PRODUCAO_ROTEIRO_ATIVO = 227;
  TagValorInicial_PRODUCAO_ROTEIRO_PERGUNTA_CODIGO = 228;
  TagValorInicial_PRODUCAO_ROTEIRO_PERGUNTA_DESCRICAO = 229;
  TagValorInicial_PRODUCAO_ROTEIRO_PERGUNTA_ATIVO = 230;
  TagValorInicial_PRODUCAO_SITUACAO_CODIGO = 231;
  TagValorInicial_PRODUCAO_SITUACAO_DESCRICAO = 232;
  TagValorInicial_PRODUCAO_SITUACAO_ATIVO = 233;
  TagValorInicial_PRODUCAO_SITUACAO_TEM_ARQUIVADO = 234;
  TagValorInicial_PRODUCAO_SITUACAO_TEM_TRABALHANDO = 235;
  TagValorInicial_PRODUCAO_STATUS_CODIGO = 236;
  TagValorInicial_PRODUCAO_STATUS_DESCRICAO = 237;
  TagValorInicial_PRODUCAO_STATUS_ATIVO = 238;
  TagValorInicial_PRODUCAO_TEMPLATE_CODIGO = 239;
  TagValorInicial_PRODUCAO_TEMPLATE_DESCRICAO = 240;
  TagValorInicial_PRODUCAO_TEMPLATE_ATIVO = 241;
  TagValorInicial_PRODUTO_CODIGO = 242;
  TagValorInicial_PRODUTO_ATIVO = 243;
  TagValorInicial_PRODUTO_DESCRICAO = 244;
  TagValorInicial_PRODUTO_PODE_ALTERAR_ESTOQUE = 245;
  TagValorInicial_PRODUTO_UNIDADE = 246;
  TagValorInicial_PRODUTO_TEM_IPPT = 247;
  TagValorInicial_PRODUTO_TEM_IAT = 248;
  TagValorInicial_PRODUTO_DT_CADASTRO = 249;
  TagValorInicial_PRODUTO_CALC_PMARGEM_CONTRIBUICAO = 250;
  TagValorInicial_PRODUTO_TEM_TAREFA_PRODUCAO = 251;
  TagValorInicial_PRODUTO_ORIGEM_MERCADORIA = 252;
  TagValorInicial_PRODUTO_TEM_VARIACAO = 253;
  TagValorInicial_PRODUTO_ESTOQUE_MAX = 254;
  TagValorInicial_PRODUTO_PODE_RETORNAR_AO_ESTOQUE = 255;
  TagValorInicial_PRODUTO_TEM_LOTE = 256;
  TagValorInicial_PRODUTO_QTDADEPECA = 257;
  TagValorInicial_PRODUTO_COMP = 258;
  TagValorInicial_PRODUTO_TEM_COMPOSICAO = 259;
  TagValorInicial_PRODUTO_ESTOQUE_MIN = 260;
  TagValorInicial_PRODUTO_LARG = 261;
  TagValorInicial_PRODUTO_ESPESSURA = 262;
  TagValorInicial_PRODUTO_QTDADEPECA_FORMULA = 263;
  TagValorInicial_PRODUTO_COMP_FORMULA = 264;
  TagValorInicial_PRODUTO_LARG_FORMULA = 265;
  TagValorInicial_PRODUTO_ESPESSURA_FORMULA = 266;
  TagValorInicial_PRODUTO_COMP_RENDIMENTO = 267;
  TagValorInicial_PRODUTO_LARG_RENDIMENTO = 268;
  TagValorInicial_PRODUTO_ESPESSURA_RENDIMENTO = 269;
  TagValorInicial_PRODUTO_QTDADEPECA_RENDIMENTO = 270;
  TagValorInicial_PRODUTO_PODE_ATUALIZAR_MARKUP = 271;
  TagValorInicial_PRODUTO_PODE_SER_VENDIDO = 272;
  TagValorInicial_PRODUTO_PODE_SER_COMPRADO = 273;
  TagValorInicial_PRODUTO_TEM_MARGEM_FIXA_CONTIBUICAO = 274;
  TagValorInicial_PRODUTO_TEM_MATERIAPRIMA = 275;
  TagValorInicial_PRODUTO_TEM_SERVICO = 276;
  TagValorInicial_PRODUTO_TEM_USOECONSUMO = 277;
  TagValorInicial_PRODUTO_TEM_PRODUTO = 278;
  TagValorInicial_PRODUTO_CODPRODUTO_TIPO = 279;
  TagValorInicial_PRODUTO_CATEGORIA_CODIGO = 280;
  TagValorInicial_PRODUTO_CATEGORIA_ATIVO = 281;
  TagValorInicial_PRODUTO_CATEGORIA_DESCRICAO = 282;
  TagValorInicial_PRODUTO_CATEGORIA_TIPO = 283;
  TagValorInicial_PRODUTO_ESTOQUE_LOCAL_CODIGO = 284;
  TagValorInicial_PRODUTO_ESTOQUE_LOCAL_DESCRICAO = 285;
  TagValorInicial_PRODUTO_ESTOQUE_LOCAL_ATIVO = 286;
  TagValorInicial_PRODUTO_GRADE_MODELO_CODIGO = 287;
  TagValorInicial_PRODUTO_GRADE_MODELO_ATIVO = 288;
  TagValorInicial_PRODUTO_GRADE_MODELO_DESCRICAO = 289;
  TagValorInicial_PRODUTO_GRUPO_CODIGO = 290;
  TagValorInicial_PRODUTO_GRUPO_ATIVO = 291;
  TagValorInicial_PRODUTO_GRUPO_DESCRICAO = 292;
  TagValorInicial_PRODUTO_GRUPO_CODNF_NATUREZA_OPERACAO = 293;
  TagValorInicial_PRODUTO_LOTE_CODPRODUTO = 294;
  TagValorInicial_PRODUTO_LOTE_REFERENCIA = 295;
  TagValorInicial_PRODUTO_LOTE_ATIVO = 296;
  TagValorInicial_PRODUTO_MARCA_CODIGO = 297;
  TagValorInicial_PRODUTO_MARCA_DESCRICAO = 298;
  TagValorInicial_PRODUTO_MARCA_ATIVO = 299;
  TagValorInicial_PRODUTO_MARKUP_CODPRODUTO = 300;
  TagValorInicial_PRODUTO_MARKUP_ATIVO = 301;
  TagValorInicial_PRODUTO_MOVIMENTO_CODIGO = 302;
  TagValorInicial_PRODUTO_MOVIMENTO_ATIVO = 303;
  TagValorInicial_PRODUTO_MOVIMENTO_OBSERVACAO = 304;
  TagValorInicial_PRODUTO_MOVIMENTO_PRODUTO_ESTOQUE_LOCAL = 305;
  TagValorInicial_PRODUTO_MOVIMENTO_DATA = 306;
  TagValorInicial_PRODUTO_MOVIMENTO_TIPO_MOVIMENTO = 307;
  TagValorInicial_PRODUTO_MOVIMENTO_QUANT = 308;
  TagValorInicial_PRODUTO_TABELA_CODIGO = 309;
  TagValorInicial_PRODUTO_TABELA_ATIVO = 310;
  TagValorInicial_PRODUTO_TABELA_DESCRICAO = 311;
  TagValorInicial_PRODUTO_TIPO_CODIGO = 312;
  TagValorInicial_PRODUTO_TIPO_ATIVO = 313;
  TagValorInicial_PRODUTO_TIPO_DESCRICAO = 314;
  TagValorInicial_PRODUTO_TIPO_PODE_ALTERAR_ESTOQUE = 315;
  TagValorInicial_RECURSO_CODIGO = 316;
  TagValorInicial_RECURSO_ATIVO = 317;
  TagValorInicial_SETOR_CODIGO = 318;
  TagValorInicial_SETOR_ATIVO = 319;
  TagValorInicial_SETOR_DESCRICAO = 320;
  TagValorInicial_SPREADSHEET_REFERENCIA_CODIGO = 321;
  TagValorInicial_SPREADSHEET_REFERENCIA_DESCRICAO = 322;
  TagValorInicial_SPREADSHEET_REFERENCIA_SPREADSHEET = 323;
  TagValorInicial_SPREADSHEET_REFERENCIA_ATIVO = 324;
  TagValorInicial_TELEFONES_CODIGO = 325;
  TagValorInicial_TELEFONES_DESCRICAO = 326;
  TagValorInicial_TELEFONES_ATIVO = 327;
  TagValorInicial_TFRMPRODUTO_CODIGO = 328;
  TagValorInicial_TFRMPRODUTO_ATIVO = 329;
  TagValorInicial_TFRMPRODUTO_DESCRICAO = 330;
  TagValorInicial_TFRMPRODUTO_PODE_ALTERAR_ESTOQUE = 331;
  TagValorInicial_TFRMPRODUTO_UNIDADE = 332;
  TagValorInicial_TFRMPRODUTO_TEM_IPPT = 333;
  TagValorInicial_TFRMPRODUTO_TEM_IAT = 334;
  TagValorInicial_TFRMPRODUTO_TEM_COMPOSICAO = 335;
  TagValorInicial_TFRMPRODUTO_DT_CADASTRO = 336;
  TagValorInicial_TFRMPRODUTO_CALC_PMARGEM_CONTRIBUICAO = 337;
  TagValorInicial_TFRMPRODUTO_TEM_TAREFA_PRODUCAO = 338;
  TagValorInicial_TFRMPRODUTO_ORIGEM_MERCADORIA = 339;
  TagValorInicial_TFRMPRODUTO_ESTOQUE_MIN = 340;
  TagValorInicial_TFRMPRODUTO_ESTOQUE_MAX = 341;
  TagValorInicial_TFRMPRODUTO_PODE_RETORNAR_AO_ESTOQUE = 342;
  TagValorInicial_TFRMPRODUTO_TEM_LOTE = 343;
  TagValorInicial_TFRMPRODUTO_QTDADEPECA = 344;
  TagValorInicial_TFRMPRODUTO_COMP = 345;
  TagValorInicial_TFRMPRODUTO_LARG = 346;
  TagValorInicial_TFRMPRODUTO_ESPESSURA = 347;
  TagValorInicial_TFRMPRODUTO_QTDADEPECA_FORMULA = 348;
  TagValorInicial_TFRMPRODUTO_COMP_FORMULA = 349;
  TagValorInicial_TFRMPRODUTO_LARG_FORMULA = 350;
  TagValorInicial_TFRMPRODUTO_ESPESSURA_FORMULA = 351;
  TagValorInicial_TFRMPRODUTO_COMP_RENDIMENTO = 352;
  TagValorInicial_TFRMPRODUTO_LARG_RENDIMENTO = 353;
  TagValorInicial_TFRMPRODUTO_ESPESSURA_RENDIMENTO = 354;
  TagValorInicial_TFRMPRODUTO_QTDADEPECA_RENDIMENTO = 355;
  TagValorInicial_TFRMPRODUTO_PODE_ATUALIZAR_MARKUP = 356;
  TagValorInicial_TFRMPRODUTO_PODE_SER_VENDIDO = 357;
  TagValorInicial_TFRMPRODUTO_PODE_SER_COMPRADO = 358;
  TagValorInicial_TFRMPRODUTO_TEM_MARGEM_FIXA_CONTIBUICAO = 359;
  TagValorInicial_TFRMWR_CONTROLE_CODIGO = 360;
  TagValorInicial_TFRMWR_CONTROLE_ATIVO = 361;
  TagValorInicial_TFRMWR_CONTROLE_DESCRICAO = 362;
  TagValorInicial_TIPO_IMPRESSAO_CODIGO = 363;
  TagValorInicial_TIPO_IMPRESSAO_DESCRICAO = 364;
  TagValorInicial_TIPO_IMPRESSAO_ATIVO = 365;
  TagValorInicial_TIPO_PAGAMENTO_CODIGO = 366;
  TagValorInicial_TIPO_PAGAMENTO_ATIVO = 367;
  TagValorInicial_TIPO_PAGAMENTO_DESCRICAO = 368;
  TagValorInicial_UNIDADE_CODIGO = 369;
  TagValorInicial_UNIDADE_ATIVO = 370;
  TagValorInicial_UNIDADE_DESCRICAO = 371;
  TagValorInicial_VENDA_CODIGO = 372;
  TagValorInicial_VENDA_ATIVO = 373;
  TagValorInicial_VENDA_INTERVALO_MENSAL = 374;
  TagValorInicial_VENDA_PESSOA_RESPONSAVEL_TIPO = 375;
  TagValorInicial_VENDA_STATUS = 376;
  TagValorInicial_VENDA_DT_EMISSAO = 377;
  TagValorInicial_VENDA_PROJETO_DT_INICIO = 378;
  TagValorInicial_VENDA_DT_COMPETENCIA = 379;
  TagValorInicial_VENDA_OPERACAO = 380;
  TagValorInicial_VENDA_PODE_RATEAR_FRETE_DESC_OUTRO = 381;
  TagValorInicial_VENDA_RAZAOSOCIAL = 382;
  TagValorInicial_VENDA_VENDA_TIPO = 383;
  TagValorInicial_VENDA_TELEFONE = 384;
  TagValorInicial_VENDA_CONDICAOPAGTO = 385;
  TagValorInicial_VENDA_PODE_ATUALIZAR_CADASTRO = 386;
  TagValorInicial_VENDA_NF_OBSERVACAO_PADRAO = 387;
  TagValorInicial_VENDA_NF_NUMERO = 388;
  TagValorInicial_VENDA_NF_FRETEPORCONTA = 389;
  TagValorInicial_VENDA_SERVICO_NOTA_PADRAO = 390;
  TagValorInicial_VENDA_VENDA_ESTAGIO = 391;
  TagValorInicial_VENDA_VENDA_SITUACAO = 392;
  TagValorInicial_VENDA_TOTAL = 393;
  TagValorInicial_VENDA_NF_DT_EMISSAO = 394;
  TagValorInicial_VENDA_NF_DT_SAIDAENTRADA = 395;
  TagValorInicial_VENDA_PDESC = 396;
  TagValorInicial_VENDA_RESPONSAVEL_CNPJCPF = 397;
  TagValorInicial_VENDA_RESPONSAVEL_CEP = 398;
  TagValorInicial_VENDA_RESPONSAVEL_ENDERECO = 399;
  TagValorInicial_VENDA_RESPONSAVEL_NUMERO = 400;
  TagValorInicial_VENDA_RESPONSAVEL_BAIRRO = 401;
  TagValorInicial_VENDA_RESPONSAVEL_CODCIDADE = 402;
  TagValorInicial_VENDA_RESPONSAVEL_CIDADE = 403;
  TagValorInicial_VENDA_RESPONSAVEL_UF = 404;
  TagValorInicial_VENDA_RESPONSAVEL_INSCIDENT = 405;
  TagValorInicial_VENDA_NFE_CALCULA_DIFAL = 406;
  TagValorInicial_VENDA_NF_NREF = 407;
  TagValorInicial_VENDA_NF_TRANSP_QVOL = 408;
  TagValorInicial_VENDA_RESPONSAVEL_INSC_MUNICIPAL = 409;
  TagValorInicial_VENDA_NF_FINALIDADE = 410;
  TagValorInicial_VENDA_NF_SAIDA_ENTRADA = 411;
  TagValorInicial_VENDA_CONSUMIDOR_FINAL = 412;
  TagValorInicial_VENDA_ESTAGIO_CODIGO = 413;
  TagValorInicial_VENDA_ESTAGIO_ATIVO = 414;
  TagValorInicial_VENDA_ESTAGIO_DESCRICAO = 415;
  TagValorInicial_VENDA_FINANCEIRO_CODIGO = 416;
  TagValorInicial_VENDA_PRODUTO_CODPRODUTO = 417;
  TagValorInicial_VENDA_PRODUTO_CODNF_CFOP = 418;
  TagValorInicial_VENDA_PRODUTO_CODNF_CST = 419;
  TagValorInicial_VENDA_PRODUTO_CODNF_NCM = 420;
  TagValorInicial_VENDA_PRODUTO_NF_VICMS = 421;
  TagValorInicial_VENDA_PRODUTO_DESCRICAO = 422;
  TagValorInicial_VENDA_SITUACAO_CODIGO = 423;
  TagValorInicial_VENDA_SITUACAO_ATIVO = 424;
  TagValorInicial_VENDA_SITUACAO_DESCRICAO = 425;
  TagValorInicial_VENDA_TIPO_CODIGO = 426;
  TagValorInicial_VENDA_TIPO_ATIVO = 427;
  TagValorInicial_VENDA_TIPO_DESCRICAO = 428;
  TagValorInicial_VENDA_TIPO_NF_FINALIDADE = 429;
  TagValorInicial_VENDA_TIPO_PRODUTO_ESTOQUE_LOCAL = 430;
  TagValorInicial_VENDA_TIPO_PODE_SER_PRODUZIDO = 431;
  TagValorInicial_VENDA_TIPO_PODE_SER_FATURADO = 432;
  TagValorInicial_VENDA_TIPO_ENTRADA_SAIDA = 433;
  TagValorInicial_VENDA_TIPO_MODELO = 434;
  TagValorInicial_VENDA_TIPO_NF_FRETE_POR_CONTA = 435;


  TagWR_Valor_Inicial_Last = TagValorInicial_VENDA_TIPO_NF_FRETE_POR_CONTA;


procedure Registra_WR_Valor_Inicial(ATag_Campo, ATag_Tela: Integer; ATabela, ACampo, ACaption, AHint, APossuiPK, AMultEmpresa,
                             ATemPadrao, AGen, AValorInicial, AObservacao, ANuvem_Tags: String);

Var
  AWR_Valor_Inicial: array [TagWR_Valor_Inicial_First..TagWR_Valor_Inicial_Last] of TWR_Valor_Inicial;

implementation

procedure Registra_WR_Valor_Inicial(ATag_Campo, ATag_Tela: Integer; ATabela, ACampo, ACaption, AHint, APossuiPK, AMultEmpresa,
                             ATemPadrao, AGen, AValorInicial, AObservacao, ANuvem_Tags: String);
begin
  AWR_Valor_Inicial[ATag_Campo]                  := TWR_Valor_Inicial.Create;
  AWR_Valor_Inicial[ATag_Campo].Codigo           := ATag_Campo;
  AWR_Valor_Inicial[ATag_Campo].Tabela           := ATabela;
  AWR_Valor_Inicial[ATag_Campo].Campo            := ACampo;
  AWR_Valor_Inicial[ATag_Campo].Caption          := ACaption;
  AWR_Valor_Inicial[ATag_Campo].Hint             := AHint;
  AWR_Valor_Inicial[ATag_Campo].Tem_PK           := APossuiPK;
  AWR_Valor_Inicial[ATag_Campo].Tem_MultEmpresa  := AMultEmpresa;
  AWR_Valor_Inicial[ATag_Campo].Tem_Padrao       := ATemPadrao;
  AWR_Valor_Inicial[ATag_Campo].Tem_Gen          := AGen;
  AWR_Valor_Inicial[ATag_Campo].Valor_Inicial    := AValorInicial;
  AWR_Valor_Inicial[ATag_Campo].Observacao       := AObservacao;
  AWR_Valor_Inicial[ATag_Campo].Nuvem_Tags       := ANuvem_Tags;
  AWR_Valor_Inicial[ATag_Campo].Tag_Tela         := ATag_Tela;


//  AWR_Valor_Inicial[ATag_Campo].Tem_Obrigatorio  := AObrigatorio;        Foram Obrigatório
//  AWR_Valor_Inicial[ATag_Campo].Tem_duplicidade  := ATem_duplicidade;    Foram Obrigatório
end;

end.