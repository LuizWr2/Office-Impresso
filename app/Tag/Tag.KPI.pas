﻿unit Tag.KPI;

interface

Uses
  Classes.APP;

const
  // Tag KPI
  Tag_KPI_Separador                  = 0;
  Tag_KPI_First                      = Tag_KPI_Separador;
  TagKPI_Taxa_de_Atraso_Por_Funcionário_Por_Produto = 1;
  TagKPI_Taxa_de_Perda_Por_Funcionário_Por_Produto = 2;
  TagKPI_Taxa_de_Reaproveitamento_Por_Funcionário_Por_Produto = 3;
  TagKPI_Produtividade_Funcionário_Hora_Por_Equipe = 4;
  TagKPI_Número_de_Serviços_Produtos_Entregues_Por_Funcionário = 5;
  TagKPI_Taxa_de_Produção_Por_Funcionário_Por_Produto_Serviço = 6;
  TagKPI_Tempo_de_Inatividade = 7;
  TagKPI_Eficiência_do_Equipamento = 8;
  TagKPI_Tempo_médio_entre_Falhas_Producao = 9;
  TagKPI_Tempo_médio_para_Reparos = 10;
  TagKPI_Produção_Parada_Por_Funcionário_Por_Produto = 11;
  TagKPI_Taxa_de_Projetos_Concluídos_fora_Prazo = 12;
  TagKPI_Taxa_de_Projetos_Concluídos_no_Prazo = 13;
  TagKPI_Taxa_de_Projetos_Dentro_do_Orçamento = 14;
  TagKPI_Taxa_de_Projetos_Fora_do_Orçamento = 15;
  TagKPI_Taxa_de_Problemas_Incidentes = 16;
  TagKPI_Taxa_de_Utilização_de_Recursos = 17;
  TagKPI_Custo_Médio_por_Atividade_Tarefa = 18;
  TagKPI_Taxa_de_Tarefas_Concluídas = 19;
  TagKPI_Taxa_de_Tarefas_Transferidas = 20;
  TagKPI_Taxa_de_Atraso = 22;
  TagKPI_Taxa_de_Alteração_do_Escopo = 23;
  TagKPI_Taxa_de_Cancelamentos = 24;
  TagKPI_Taxa_de_Excluídos = 25;
  TagKPI_Taxa_de_Metas_Alcançadas = 26;
  TagKPI_Taxa_de_Riscos_Identificados = 27;
  TagKPI_Custo_Médio_do_Processo_de_Planejamento = 28;
  TagKPI_Taxa_de_eficiência_do_Processo_de_Planejamento = 29;
  TagKPI_Adesão_ao_Plano = 30;
  TagKPI_Tempo_de_Ciclo_do_Produto = 31;
  TagKPI_Taxa_de_Rendimento_Por_Produto_Por_Equipe = 32;
  TagKPI_Tempo_de_Resposta_a_Alterações = 33;
  TagKPI_Taxa_de_Defeitos_ou_Rejeições_Por_Produto_Por_Equipe = 34;
  TagKPI_Tempo_de_Espera_Médio_Por_Produto_Por_Equipe = 35;
  TagKPI_Taxa_de_Cumprimento_de_Pedidos = 36;
  TagKPI_Taxa_da_Alteração_da_Equipe_Padrão_Por_Produto_Por_Equipe = 37;
  TagKPI_Pré_Requisitos_Pendentes_Por_Produto_Por_Etapa = 38;
  TagKPI_Baixa_Automática_Ativa_Por_Produto = 39;
  TagKPI_Taxa_de_Defeitos = 40;
  TagKPI_Custo_de_Produção_por_Unidade_Composta = 41;
  TagKPI_Média_de_Diferença_de_Valor = 42;
  TagKPI_Percentual_de_Composições_Sem_Fórmula = 43;
  TagKPI_Taxa_de_Utilização_de_Máteria_Prima = 44;
  TagKPI_Taxa_de_Rendimento = 45;
  TagKPI_Taxa_de_Rotatividade_de_Estoque_de_Componentes = 46;
  TagKPI_Margem_de_Lucro_por_Unidade_Composta = 47;
  TagKPI_Taxa_de_Ruptura_de_Estoque_de_Componentes = 48;
  TagKPI_Taxa_de_Retorno_ou_Devolução = 49;
  TagKPI_Valor_Total_de_Desconto_Venda = 50;
  TagKPI_Valor_Total_de_frete_Venda = 51;
  TagKPI_Valor_Total_de_Acréscimo_Venda = 52;
  TagKPI_Taxa_de_Vendas_não_faturadas = 53;
  TagKPI_Produtividade_da_Equipe_de_Vendas = 54;
  TagKPI_Taxa_de_Churn = 55;
  TagKPI_Ticket_Médio = 56;
  TagKPI_Receita_de_Vendas = 57;
  TagKPI_Taxa_de_Conversão_de_Vendas = 58;
  TagKPI_Volume_de_Vendas_do_Período = 59;
  TagKPI_Taxa_de_Vendas_Abaixo_do_Mínimo = 60;
  TagKPI_Taxa_de_Vendas_Excluídas = 61;
  TagKPI_Margem_de_Lucro_por_Venda = 62;
  TagKPI_Taxa_de_Vendas_Vinculadas = 63;
  TagKPI_Tempo_de_Ciclo_de_Venda = 64;
  TagKPI_Vendas_por_Canal = 65;
  TagKPI_Vendas_por_Região = 66;
  TagKPI_Valor_Total_de_Vendas = 67;
  TagKPI_Valor_Total_de_Desconto_Pedido = 69;
  TagKPI_Volume_de_Pedidos = 70;
  TagKPI_Valor_Total_de_Frete_Cobrado = 71;
  TagKPI_Valor_Total_de_Acréscimo_Pedido = 72;
  TagKPI_Tempo_Médio_de_Processamento_de_Pedido = 73;
  TagKPI_Taxa_de_Pedidos_Atrasados = 74;
  TagKPI_Ticket_médio_do_Período = 75;
  TagKPI_Taxa_de_Pedidos_Excluídos = 76;
  TagKPI_Taxa_de_Pedidos_Entregues_no_Prazo = 77;
  TagKPI_Tempo_Médio_de_Entrega = 78;
  TagKPI_Taxa_de_Pedidos_Recorrentes = 79;
  TagKPI_Taxa_de_Pedidos_Pendentes_de_Envio_a_Produção = 80;
  TagKPI_Taxa_de_Pedidos_Enviados_a_Produção = 81;
  TagKPI_Taxa_de_Pedidos_Abaixo_do_Valor_Mínimo = 82;
  TagKPI_Valor_Total_de_Pedidos = 83;
  TagKPI_Volume_de_Vendas = 84;
  TagKPI_Valor_Médio_de_Venda = 85;
  TagKPI_Média_de_Itens_por_Venda = 86;
  TagKPI_Valor_Total_de_Vendas_PDV = 87;
  TagKPI_Taxa_de_Cancelamento = 88;
  TagKPI_Vendas_por_Hora_Período_do_Dia = 89;
  TagKPI_Tempo_Médio_de_Atendimento = 90;
  TagKPI_Valor_Total_de_Acréscimo_PDV = 91;
  TagKPI_Valor_Total_de_Desconto_PDV = 92;
  TagKPI_Taxa_de_Fidelidade_do_Cliente = 93;
  TagKPI_Taxa_de_Vendas_com_Acréscimo = 94;
  TagKPI_Taxa_de_Vendas_com_Desconto = 95;
  TagKPI_Taxa_de_Cupom_Cancelado = 96;
  TagKPI_Taxa_de_Item_Cancelado = 97;
  TagKPI_Retirada_de_Caixa = 98;
  TagKPI_Reforço_de_Caixa = 99;
  TagKPI_Volume_de_Vendas_Registradas = 100;
  TagKPI_Tempo_Médio_de_Processamento_de_Venda = 101;
  TagKPI_Valor_Total_de_Vendas_PAF = 102;
  TagKPI_Valor_Total_de_Acréscimo_PAF = 103;
  TagKPI_Valor_Total_de_Desconto_PAF = 104;
  TagKPI_Valor_total_de_Cancelamentos_PAF = 105;
  TagKPI_Valor_Total_de_Crédito_Concedido = 106;
  TagKPI_Número_de_Créditos_Concedidos_no_Período = 107;
  TagKPI_Valor_Médio_de_Crédito_Concedido = 108;
  TagKPI_Duração_Média_do_Crédito = 109;
  TagKPI_Taxa_de_Utilização_de_Crédito = 110;
  TagKPI_Taxa_de_Clientes_com_Crédito_Pendente = 111;
  TagKPI_Número_de_Transações_por_Tabela_de_Preço = 112;
  TagKPI_Margem_Média_de_Lucro_por_Tabela_de_Preço = 113;
  TagKPI_Descontos_Médios_Concedidos = 114;
  TagKPI_Taxa_de_Adoção_de_Novas_Tabelas_de_Preço = 115;
  TagKPI_Média_de_Acréscimos_Aplicados = 116;
  TagKPI_Taxa_de_Retenção_de_Clientes_por_Tabela_de_Preço = 117;
  TagKPI_Tempo_Médio_para_Atualização_de_Tabelas_de_Preço = 118;
  TagKPI_Comparação_de_Vendas_Previstas_vs_Realizadas_por_Tabela_de_Preço = 119;
  TagKPI_Valor_Vitalício_do_Cliente = 120;
  TagKPI_Valor_Total_de_Desconto_Tabela_Preco = 121;
  TagKPI_Valor_Total_de_Acréscimo_Tabela_Preco = 122;
  TagKPI_Índice_Médio = 123;
  TagKPI_Número_de_Produtos_Serviços_Abaixo_do_Markup_desejado = 124;
  TagKPI_Número_de_Produtos_Serviços_Acima_do_Markup_desejado = 125;
  TagKPI_Margem_Média_de_Lucro = 126;
  TagKPI_Taxa_de_Retenção_de_Clientes = 127;
  TagKPI_Variação_do_Markup_ao_Longo_do_Tempo = 128;
  TagKPI_Volume_de_Vendas_por_Categoria_de_Markup = 129;
  TagKPI_Taxa_de_Ajustes_de_Markup = 130;
  TagKPI_Volume_de_Serviços_Realizados = 131;
  TagKPI_Tempo_Médio_de_Atendimento_Venda_Mecanica = 132;
  TagKPI_Valor_total_de_Frete = 133;
  TagKPI_Valor_total_de_Descontos_Venda_Mecanica = 134;
  TagKPI_Valor_total_de_Acréscimos = 135;
  TagKPI_Margem_de_Lucro_por_Serviço = 136;
  TagKPI_Diminuição_da_Margem_de_Serviço = 137;
  TagKPI_Rotatividade_de_Estoque_de_Peças = 138;
  TagKPI_Taxa_de_Ocupação_da_Oficina = 139;
  TagKPI_Taxa_de_Retorno_de_Veículos = 140;
  TagKPI_Receita_média = 141;
  TagKPI_Taxa_de_Conversação_de_Orçamentos_em_Ordens_de_Serviço = 142;
  TagKPI_Taxa_de_Serviços_Realizados_no_Prazo = 143;
  TagKPI_Taxa_de_Ocupação_de_Funcionários = 144;
  TagKPI_Taxa_de_Utilização_de_Equipamentos_e_Ferramentas = 145;
  TagKPI_Taxa_de_Garantia = 146;
  TagKPI_Valor_Total_de_Ordens_de_Serviço = 147;
  TagKPI_Valor_Total_de_Garantias = 148;
  TagKPI_Total_de_Comissões_Pagas = 149;
  TagKPI_Valor_Médio_de_Comissão = 150;
  TagKPI_Número_de_Pagamentos_de_Comissão = 151;
  TagKPI_Tempo_Médio_para_Pagamento_de_Comissão = 152;
  TagKPI_Discrepâncias_nas_Comissões = 153;
  TagKPI_Comissão_Média_por_Vendedor = 154;
  TagKPI_Custo_Total_de_Comissões_como_Percentual_das_Vendas = 155;
  TagKPI_Número_de_Vendas_Qualificadas_para_Comissão = 156;
  TagKPI_Retorno_sobre_Investimento_de_Comissão = 157;
  TagKPI_Taxa_de_Sucesso_de_Transações = 158;
  TagKPI_Tempo_Médio_de_Processamento_de_Transações = 159;
  TagKPI_Taxa_de_Falhas_de_Transação = 160;
  TagKPI_Volume_de_Transações_no_Período = 161;
  TagKPI_Valor_Médio_de_Transação = 162;
  TagKPI_Taxa_de_Chargeback_Estorno = 163;
  TagKPI_Disponibilidade_do_Sistema = 164;
  TagKPI_Taxa_de_Uso_de_Diferentes_Modalidades_de_Pagamento = 165;
  TagKPI_Taxa_de_Conversão_em_Transações_de_Crédito_Parcelado = 166;
  TagKPI_Valor_Total_de_Transações_no_Período = 167;
  TagKPI_Taxa_de_Transações_Negadas = 168;
  TagKPI_Tempo_Médio_de_Resposta = 169;
  TagKPI_Taxa_de_Falhas_de_Comunicação = 170;
  TagKPI_Custo_Médio_Por_Transação = 171;
  TagKPI_Valor_Total_de_Transações = 172;
  TagKPI_Taxa_de_Alcance_de_Metas = 173;
  TagKPI_Tempo_Médio_para_Alcançar_Metas = 174;
  TagKPI_Taxa_de_Ajuste_de_Metas = 175;
  TagKPI_Custo_por_Meta_Alcançada = 176;
  TagKPI_Taxa_de_Erros_de_Configuração_de_Metas = 177;
  TagKPI_Saldo_de_Caixa_Diário = 178;
  TagKPI_Fluxo_de_Caixa_Operacional = 179;
  TagKPI_Variação_do_Saldo_de_Caixa = 180;
  TagKPI_Dias_de_Caixa_Disponível = 181;
  TagKPI_Índice_de_Liquidez_Imediata = 182;
  TagKPI_Taxa_de_Crescimento_do_Saldo_de_Caixa = 183;
  TagKPI_Despesas_Não_Planejadas = 184;
  TagKPI_Razão_de_Cobertura_de_Caixa = 185;
  TagKPI_Fluxo_de_Caixa_Livre = 186;
  TagKPI_Valor_de_Desconto = 187;
  TagKPI_Valor_de_Juros = 188;
  TagKPI_Taxa_de_Exclusões = 189;
  TagKPI_Sangrias_do_Período = 190;
  TagKPI_Valor_Total_de_Pagamentos_Realizados = 191;
  TagKPI_Valor_Total_de_Recebimentos_no_Prazo = 192;
  TagKPI_Valor_Total_de_Recebimento_fora_do_Prazo = 193;
  TagKPI_Fluxo_de_Caixa_Mensal = 194;
  TagKPI_Volume_de_Transações = 195;
  TagKPI_Valor_de_Juros_Cobrados_no_Período = 196;
  TagKPI_Valor_de_Multa_Recebimento = 197;
  TagKPI_Taxa_de_Recebimentos_Parciais = 198;
  TagKPI_Valor_Total_de_Recebimentos_Pendentes = 199;
  TagKPI_Dias_Médios_de_atraso_no_Recebimento = 200;
  TagKPI_Prazo_Médio_de_Recebimento = 201;
  TagKPI_Valor_Total_de_Contas_a_Receber_Vencidas = 202;
  TagKPI_Taxa_de_Cobrança_Efetiva = 203;
  TagKPI_Valor_Total_de_Descontos_Recebimento = 204;
  TagKPI_Valor_Médio_de_Recebimento = 205;
  TagKPI_Valor_Total_de_Recebimentos_no_período = 206;
  TagKPI_Mensalidades_Pendentes_do_Mês = 207;
  TagKPI_Valor_Total_de_Juros = 208;
  TagKPI_Valor_Total_de_Descontos = 209;
  TagKPI_Valor_Total_de_Multa_Financeiro_Contrato = 210;
  TagKPI_Tempo_Médio_de_Ciclo_de_Contratação = 211;
  TagKPI_Percentual_de_Contratos_Renovados = 212;
  TagKPI_Taxa_de_Conformidade_Contratual = 213;
  TagKPI_Valor_Total_dos_Contratos_Ativos = 214;
  TagKPI_Taxa_de_Risco_Contratual = 215;
  TagKPI_Tempo_Médio_de_Aprovação_de_Contrato = 216;
  TagKPI_Taxa_de_Cumprimento_de_Obrigações_Contratuais = 217;
  TagKPI_Número_de_Contratos_por_Fornecedor_Cliente = 218;
  TagKPI_Taxa_de_Vencimento_de_Contratos = 219;
  TagKPI_Taxa_de_Cancelamento_de_Contratos = 220;
  TagKPI_Valor_Médio_de_Mensalidade = 221;
  TagKPI_Média_de_dias_para_Recebimento = 222;
  TagKPI_Taxa_de_Adesão_no_Período = 223;
  TagKPI_Taxa_de_Desacordo_de_Mensalidade = 224;
  TagKPI_Receita_Mensal_Anual = 225;
  TagKPI_Taxa_de_Inadimplência = 226;
  TagKPI_Valor_Total_de_Boletos_pagos_Após_o_Vencimento = 227;
  TagKPI_Valor_Total_de_Pagamentos_Antecipados = 228;
  TagKPI_Valor_Total_de_Pagamentos_Após_o_Vencimento = 229;
  TagKPI_Valor_Total_de_Recebimentos_Após_Vencimentos = 230;
  TagKPI_Valor_Total_de_Recebimentos_Antecipados = 231;
  TagKPI_Tempo_Médio_de_Recebimento = 232;
  TagKPI_Valor_Total_de_Boletos_Emitidos_Financeiro_Boleto = 233;
  TagKPI_Valor_Total_de_Boletos_Pagos = 234;
  TagKPI_Taxa_de_Boletos_Contestados = 235;
  TagKPI_Taxa_de_Boletos_Enviados_a_Protesto = 236;
  TagKPI_Taxa_de_Renegociação_de_Boletos = 237;
  TagKPI_Taxa_de_Cancelamento_de_Boletos = 238;
  TagKPI_Taxa_de_Erros_na_Emissão_de_Boletos = 239;
  TagKPI_Valor_Médio_por_Boleto_Emitido = 240;
  TagKPI_Taxa_de_Juros_Aplicada = 241;
  TagKPI_Taxa_de_Multa_Aplicada = 242;
  TagKPI_Taxa_de_Descontos = 243;
  TagKPI_Taxa_de_Boletos_Pendentes_de_Impressão = 244;
  TagKPI_Valor_Total_de_Juros_Financeiro_Boleto = 246;
  TagKPI_Valor_Total_de_Desconto = 247;
  TagKPI_Valor_Total_de_Multa_Financeiro_Boleto = 248;
  TagKPI_Valor_Total_de_Cancelamentos = 249;
  TagKPI_Tempo_de_Elaboração_da_DRE = 250;
  TagKPI_Precisão_dos_Dados = 251;
  TagKPI_Taxa_de_Erros_de_Cálculo = 252;
  TagKPI_Taxa_de_Revisões_ou_Correções = 253;
  TagKPI_Eficiência_na_Integração_de_Dados = 254;
  TagKPI_Taxa_de_Conclusão_de_Relatórios = 255;
  TagKPI_Taxa_de_Auditorias_Bem_sucedidas = 256;
  TagKPI_Taxa_de_Conformidade_Fiscal = 257;
  TagKPI_Ebitda___Lucro_antes_de_juros_impostos_depreciação_e_amortização = 258;
  TagKPI_Taxa_de_Despesas_do_Período = 259;
  TagKPI_Taxa_de_Receitas_do_Período = 260;
  TagKPI_Taxa_do_Lucro_Líquido_do_Período = 261;
  TagKPI_Margem_Bruta_do_Período = 262;
  TagKPI_Margem_Líquida_do_Período = 263;
  TagKPI_Crescimento_da_Receita = 264;
  TagKPI_Custo_dos_Produtos_Vendidos_CPV = 265;
  TagKPI_Despesas_Operacionais = 266;
  TagKPI_Margem_Operacional = 267;
  TagKPI_Índice_de_Cobertura_de_Juros = 268;
  TagKPI_Liquidez_Corrente = 269;
  TagKPI_Precisão_na_Alocação_de_Custos = 270;
  TagKPI_Taxa_de_Erros_de_Alocação = 271;
  TagKPI_Taxa_de_Revisões_ou_Correções_Financeiro_Centro_Custo = 272;
  TagKPI_Valor_total_de_Custo_por_centro_de_Custo = 273;
  TagKPI_Valor_Médio_de_Custo_por_Centro_de_Custo = 274;
  TagKPI_Taxa_de_Crescimento_dos_Custos = 275;
  TagKPI_Taxa_de_custos_Indiretos = 276;
  TagKPI_Taxa_de_Custos_Diretos = 277;
  TagKPI_Margem_de_Contribuição = 278;
  TagKPI_Lifetime_Value = 279;
  TagKPI_Taxa_de_Crescimento_Anual_Composta = 280;
  TagKPI_Eficácia_do_Ciclo_de_Cobrança = 281;
  TagKPI_Taxa_de_Inadimplência_Financeiro = 282;
  TagKPI_Índice_de_Endividamento = 283;
  TagKPI_Custo_Operacional = 284;
  TagKPI_Taxa_de_Retenção_de_Clientes_Financeiro = 285;
  TagKPI_Lançamentos_Não_Conciliados = 286;
  TagKPI_Retorno_sobre_o_Investimento = 287;
  TagKPI_Margem_de_Lucro_Bruto_e_Líquido = 288;
  TagKPI_Liquidez_Corrente_Financeiro = 289;
  TagKPI_Valor_Total_de_Juros_Financeiro = 290;
  TagKPI_Valor_Total_de_MultA = 291;
  TagKPI_Valor_Total_de_Desconto_Financeiro = 292;
  TagKPI_Valor_de_Comissão_Não_Paga_do_Período = 293;
  TagKPI_Taxa_de_Parcelas_Excluídas = 294;
  TagKPI_Taxa_de_Parcelas_sem_Conta = 295;
  TagKPI_Prazo_Médio_de_Recebimento_Financeiro = 296;
  TagKPI_Prazo_Médio_de_Pagamento = 297;
  TagKPI_Ciclo_Financeiro = 298;
  TagKPI_Variação_Percentual_das_Receitas_e_Despesas = 299;
  TagKPI_Custo_Fixo_Médio_Mensal = 300;
  TagKPI_Taxa_de_Lançamentos_Conciliados = 301;
  TagKPI_Valor_Total_de_Recebimentos = 302;
  TagKPI_Valor_Total_de_Pagamentos = 303;
  TagKPI_Saldo_Atual = 304;
  TagKPI_Taxa_de_Notas_Pendente_de_Finalização = 305;
  TagKPI_Taxa_de_Vínculos_incorretos = 306;
  TagKPI_Taxa_de_Notas_Finalizadas_Sem_Conferência = 307;
  TagKPI_Valor_Total_de_Impostos = 308;
  TagKPI_Valor_Total_de_Frete_Compra = 309;
  TagKPI_Ciclo_Médio_de_Compra = 310;
  TagKPI_Custo_Total = 311;
  TagKPI_Taxa_de_Conformidade_de_Fornecedores = 312;
  TagKPI_Taxa_de_Retorno_de_Mercadorias = 313;
  TagKPI_Taxa_de_Erros_de_Faturamento = 314;
  TagKPI_Taxa_de_Notas_Finalizadas_sem_financeiro_gerado = 315;
  TagKPI_Taxa_de_Notas_Finalizadas_sem_estoque_gerado = 316;
  TagKPI_Número_de_Fornecedores_Ativos = 317;
  TagKPI_Concentração_de_Compras_por_Fornecedor = 318;
  TagKPI_Nota_de_Conhecimento_de_Transporte_sem_vínculo = 319;
  TagKPI_Taxa_de_Compras_com_CT_e_Vinculadas = 320;
  TagKPI_Valor_Total_de_Acréscimo_Compra = 321;
  TagKPI_Valor_Total_de_Seguro = 322;
  TagKPI_Custo_Médio_Compra = 323;
  TagKPI_Diminuição_da_Margem_de_Lucro = 324;
  TagKPI_Parcela_Divergente_no_Financeiro = 325;
  TagKPI_Elevação_de_Custo = 326;
  TagKPI_Valor_Total_do_Perído = 327;
  TagKPI_Taxa_de_Cumprimento_de_Pedidos_Solicitacao_compra = 328;
  TagKPI_Valor_Médio_de_Solicitação_de_compra = 329;
  TagKPI_Taxa_de_Urgência_de_Compra = 330;
  TagKPI_Tempo_Médio_de_Aprovação_de_Solicitação = 331;
  TagKPI_Taxa_de_Aprovação_de_Primeira_Passagem = 332;
  TagKPI_Taxa_de_Rejeição_de_Solicitações = 333;
  TagKPI_Número_de_Itens_por_Solicitação = 334;
  TagKPI_Taxa_de_Conformidade_de_Compra = 335;
  TagKPI_Taxa_de_Erros_de_Solicitação = 336;
  TagKPI_Taxa_de_Conversão_de_Solicitação_para_Compra = 337;
  TagKPI_Valor_Total_no_Período = 338;
  TagKPI_Volume_de_Conversões_Realizadas = 339;
  TagKPI_Acuracidade_da_Conversão = 340;
  TagKPI_Taxa_de_Erros_de_Conversão = 341;
  TagKPI_Flexibilidade_do_Sistema = 342;
  TagKPI_Tempo_de_Atualização_de_Taxas_de_Conversão = 343;
  TagKPI_Taxa_de_Conversões_Automáticas_vs_Manuais = 344;
  TagKPI_Taxa_de_Conversões_Revertidas = 345;
  TagKPI_Taxa_de_Conversão_de_Propostas = 346;
  TagKPI_Tempo_Médio_para_Fechamento = 347;
  TagKPI_Valor_Médio_da_Proposta = 348;
  TagKPI_Taxa_de_Resposta_do_Cliente = 349;
  TagKPI_Ciclo_de_Vida_Médio_da_Proposta = 350;
  TagKPI_Taxa_de_Revisão_de_Propostas = 351;
  TagKPI_Valor_Total_de_Descontos_Proposta = 352;
  TagKPI_Taxa_de_Erros_de_Proposta = 353;
  TagKPI_Satisfação_do_Cliente = 354;
  TagKPI_Taxa_de_Retenção_de_Cliente = 355;
  TagKPI_Margem_Média_de_Lucro_por_Proposta = 356;
  TagKPI_Taxa_de_Propostas_Recusadas = 357;
  TagKPI_Tempo_Médio_para_Aprovação_de_Proposta = 358;
  TagKPI_Valor_Total_de_Frete_Proposta = 359;
  TagKPI_Valor_Total_de_Acréscimo_Proposta = 360;
  TagKPI_Volume_de_Propostas_Emitidas = 361;
  TagKPI_Custo_Médio_Proposta = 362;
  TagKPI_Taxa_de_Eventos_Transferidos = 363;
  TagKPI_Taxa_de_Eventos_Sem_Responsável = 364;
  TagKPI_Taxa_de_Eventos_Sem_Setor = 365;
  TagKPI_Taxa_de_Eventos_Concluídos = 366;
  TagKPI_Taxa_de_Eventos_Cancelados = 367;
  TagKPI_Taxa_de_Eventos_Urgentes = 368;
  TagKPI_Taxa_de_Ocupação = 369;
  TagKPI_Taxa_de_No_show = 370;
  TagKPI_Taxa_de_Reagendamento = 371;
  TagKPI_Taxa_de_Conversão_Agendamentos = 372;
  TagKPI_Taxa_de_Erros_Agendamentos = 373;
  TagKPI_Valor_Médio_de_Agendamentos = 374;
  TagKPI_Valot_Total_de_Agendamentos = 375;
  TagKPI_Giro_de_Estoque = 376;
  TagKPI_Dias_de_Estoque = 377;
  TagKPI_Custo_de_Carregamento_de_Estoque = 378;
  TagKPI_Valor_Médio_do_Estoque = 379;
  TagKPI_Valor_Total_do_Estoque_ = 380;
  TagKPI_Nível_de_Serviço_de_Estoque = 381;
  TagKPI_Taxa_de_Falta_de_Estoque = 382;
  TagKPI_Tempo_de_Reposição = 383;
  TagKPI_Taxa_de_Devolução = 384;
  TagKPI_Taxa_de_Produtos_Acima_do_Estoque_Máximo = 385;
  TagKPI_Taxa_de_Produtos_Abaixo_do_Estoque_Mínimo = 386;
  TagKPI_Taxa_de_Obsolescência_Estoque = 387;
  TagKPI_Valor_Total_de_Perdas_Estoque = 388;
  TagKPI_Taxa_de_Erros_de_Contagem = 389;
  TagKPI_Tempo_Médio_por_Contagem = 390;
  TagKPI_Tempo_Total_de_Balanço = 391;
  TagKPI_Custo_de_Balanço_por_Item = 392;
  TagKPI_Frequência_de_Balanços = 393;
  TagKPI_Taxa_de_Precisão_do_Estoque = 394;
  TagKPI_Valor_Total_do_Estoque = 395;
  TagKPI_Taxa_de_Obsolescência_Balanco = 396;
  TagKPI_Taxa_de_Estoque_Excedente = 397;
  TagKPI_Taxa_de_Estoque_de_Segurança = 398;
  TagKPI_Percentual_de_Estoque_Perdido = 399;
  TagKPI_Taxa_de_Atualizações_de_Estoque = 400;
  TagKPI_Balanços_com_Estoques_Negativos = 401;
  TagKPI_Valor_total_de_Divergências = 402;
  TagKPI_Impressões_sem_código_cadastrado = 403;
  TagKPI_Média_de_Etiquetas_por_impressão = 404;
  TagKPI_Média_de_Produtos_por_impressão = 405;
  TagKPI_Tempo_Médio_de_Impressão = 406;
  TagKPI_Taxa_de_Rotatividade_de_Itens = 407;
  TagKPI_Taxa_de_Ruptura_de_Estoque_por_Variação = 408;
  TagKPI_Tempo_Médio_para_Reabastecimento = 409;
  TagKPI_Taxa_de_Devolução_de_Produto_por_Variação = 410;
  TagKPI_Margem_de_Lucro = 411;
  TagKPI_Volume_de_Venda = 412;
  TagKPI_Estoque_Máximo = 413;
  TagKPI_Estoque_Mínimo = 414;
  TagKPI_Valor_Médio_de_Desconto = 415;
  TagKPI_Valor_Médio_de_Acréscimo = 416;
  TagKPI_Taxa_de_Obsolescência = 417;
  TagKPI_Custo_Médio = 418;
  TagKPI_Valor_Total = 419;
  TagKPI_Lucro_Total = 420;
  TagKPI_Margem_de_Lucro_por_Lote = 423;
  TagKPI_Taxa_de_Ruptura_de_Estoque = 424;
  TagKPI_Volume_de_Vendas_Lote = 425;
  TagKPI_Tempo_Médio_para_Reabastecimento_Lote = 426;
  TagKPI_Rastreabilidade = 427;
  TagKPI_Produtos_Expirados = 428;
  TagKPI_Taxa_de_Retorno_por_Lote = 429;
  TagKPI_Tempo_Médio_de_Rotação_de_Lote = 430;
  TagKPI_Taxa_de_Utilização_de_Capacidade_de_Lote = 431;
  TagKPI_Taxa_de_Desperdício = 432;
  TagKPI_Tempo_Médio_de_Vida_Útil_Restante = 433;
  TagKPI_Eficiência_de_Rotação_de_Estoque_por_Lote = 434;
  TagKPI_Taxa_de_Lotes_com_Alterações = 435;
  TagKPI_Valor_Total_de_Desconto_Lote = 436;
  TagKPI_Valor_Total_de_Acréscimo = 437;
  TagKPI_Valor_Total_de_Lotes = 438;
  TagKPI_Valor_Total_de_Perdas = 439;
  TagKPI_Taxa_de_Garantias = 440;
  TagKPI_Acuracidade_do_Estoque_por_Localização = 441;
  TagKPI_Taxa_de_Giro_de_Estoque = 442;
  TagKPI_Tempo_Médio_de_Transferência_entre_Localizações = 443;
  TagKPI_Custo_Médio_de_Armazenamento = 444;
  TagKPI_Valor_Total_de_Produtos_Danificados_ou_Perdidos = 445;
  TagKPI_Taxa_de_Pedidos_Atendidos_por_Localização = 446;
  TagKPI_Taxa_de_Devoluções = 447;
  TagKPI_Nível_de_Estoque_Mínimo_por_Localização = 448;
  TagKPI_Nível_de_Estoque_Máximo_por_Localização = 449;
  TagKPI_Taxa_de_Ruptura_de_Estoque_por_Local = 450;
  TagKPI_Custo_de_Transferência_entre_Locais = 451;
  TagKPI_Taxa_de_Utilização_de_Espaço_de_Armazenamento_por_Localização = 452;
  TagKPI_Taxa_de_Obsolescência_de_Estoque = 453;
  TagKPI_Valor_Total_de_Estoque = 454;
  TagKPI_Taxa_de_Perdas = 455;
  TagKPI_Valor_Total_do_Patrimônio = 456;
  TagKPI_Taxa_de_Depreciação_de_Ativos = 457;
  TagKPI_Custo_Total_de_Ativos = 458;
  TagKPI_Retorno_sobre_Ativos = 459;
  TagKPI_Tempo_Médio_entre_Falhas = 460;
  TagKPI_Tempo_Médio_para_Reparo = 461;
  TagKPI_Taxa_de_Utilização_de_Ativos = 462;
  TagKPI_Custo_de_Manutenção_por_Ativo = 463;
  TagKPI_Retorno_Sobre_Investimento_em_Ativos = 464;
  TagKPI_Tempo_Médio_de_Venda_de_Ativos = 465;
  TagKPI_Valor_Residual = 466;
  TagKPI_Custo_Operacional_por_Ativo = 467;
  TagKPI_Eficiência_Energética = 468;
  TagKPI_Tempo_Médio_de_Aprovação_de_Ponto = 469;
  TagKPI_Taxa_de_Erros_de_Registro = 470;
  TagKPI_Taxa_de_Ausências_Não_Justificadas = 471;
  TagKPI_Taxa_de_Adesão_dos_Funcionários = 472;
  TagKPI_Taxa_de_Ocorrências_de_Horas_Extras = 473;
  TagKPI_Taxa_de_Pontualidade = 474;
  TagKPI_Taxa_de_Conformidade_com_Escalas = 475;
  TagKPI_Taxa_de_Funcionários_sem_Horário_Definido = 476;
  TagKPI_Taxa_de_Ausências_Justificadas = 477;
  TagKPI_Taxa_de_Lançamentos_Manuais = 478;
  TagKPI_Taxa_de_Horas_Faltas = 479;
  TagKPI_Taxa_de_Precisão_da_Folha_de_Pagamento = 480;
  TagKPI_Tempo_de_Processamento_da_Folha_de_Pagamento = 481;
  TagKPI_Taxa_de_Adesão_a_Pagamentos_Digitais = 482;
  TagKPI_Taxa_de_Pagamentos_Pontuais = 483;
  TagKPI_Percentual_de_Horas_Extras = 484;
  TagKPI_Percentual_de_Horas_Faltas = 485;
  TagKPI_Valor_Total_de_INSS = 486;
  TagKPI_Valor_Total_de_FGTS = 487;
  TagKPI_Média_Salarial = 488;
  TagKPI_Percentual_de_Adiantamentos = 489;
  TagKPI_Folhas_em_Aberto = 490;
  TagKPI_Vínculos_Financeiros_Divergentes = 491;
  TagKPI_Valor_Total_de_Horas_Extras_Folha = 492;
  TagKPI_Valor_Total_de_Folhas = 493;
  TagKPI_Valor_Total_de_Horas_Faltas = 494;
  TagKPI_Valor_Total_de_Horas_Extras = 495;
  TagKPI_Valor_Total_de_Bonificação = 496;
  TagKPI_Custo_por_Contratação = 497;
  TagKPI_Taxa_de_Rotatividade_de_Funcionários = 498;
  TagKPI_Taxa_de_Retenção_de_Funcionários = 499;
  TagKPI_Taxa_de_Absenteísmo = 500;
  TagKPI_Horas_de_Treinamento = 501;
  TagKPI_Custo_Médio_por_Funcionário = 502;
  TagKPI_Taxa_de_Utilização_de_Benefícios = 503;
  TagKPI_Taxa_de_Acidentes_de_Trabalho = 504;
  TagKPI_Ferramentas_Vinculadas_ao_Funcionário = 505;
  TagKPI_Taxa_de_Atualização_Salarial = 506;
  TagKPI_Pensão_Alimentícia = 507;
  TagKPI_Atualização_de_Função = 508;
  TagKPI_Taxa_de_Férias_Concedidas = 509;
  TagKPI_Taxa_de_Funcionários_com_Dependentes = 510;
  TagKPI_Custo_total_de_Funcionários = 511;
  TagKPI_Taxa_de_Entrega = 512;
  TagKPI_Taxa_de_Abertura = 513;
  TagKPI_Taxa_de_Conversão = 514;
  TagKPI_Taxa_de_Erros = 515;
  TagKPI_Taxa_de_Cancelamento_de_Inscrição = 516;
  TagKPI_Volume_de_Notificações = 517;
  TagKPI_Capacidade_de_Pico = 518;
  TagKPI_Taxa_de_Retentativa_de_Envio = 519;
  TagKPI_Tempo_Médio_de_Aprovação = 520;
  TagKPI_Taxa_de_Atraso_nas_Aprovações = 521;
  TagKPI_Taxa_de_Erros_de_Aprovação = 522;
  TagKPI_Taxa_de_Rejeição = 523;
  TagKPI_Volume_de_Solicitações = 524;
  TagKPI_Taxa_de_Aceitação = 525;
  TagKPI_Taxa_de_Rastreabilidade = 526;
  TagKPI_Taxa_de_Conformidade_Sintegra = 527;
  TagKPI_Taxa_de_Erros_de_Submissão = 528;
  TagKPI_Tempo_Médio_de_Submissão = 529;
  TagKPI_Taxa_de_Atraso_nas_Submissões = 530;
  TagKPI_Taxa_de_Auditoria_Bem_sucedida = 531;
  TagKPI_Índice_de_Rastreabilidade = 532;
  TagKPI_Volume_de_Registros = 533;
  TagKPI_Taxa_de_Envios_Pontuais_Porcentagem_de_arquivos_enviados_dentro_do_prazo_estabelecido = 534;
  TagKPI_Taxa_de_Conformidade_com_o_Ato_COTEPE = 535;
  TagKPI_Índice_de_Precisão_de_Dados = 536;
  TagKPI_Taxa_de_Atraso_na_Conformidade = 537;
  TagKPI_Taxa_de_Sucesso_em_Auditorias_PAF = 538;
  TagKPI_Índice_de_Rastreabilidade_PAF = 539;
  TagKPI_Taxa_de_Conformidade_SPED = 540;
  TagKPI_Taxa_de_Erros_de_Submissão_SPED = 541;
  TagKPI_Tempo_Médio_de_Submissão_SPED = 542;
  TagKPI_Taxa_de_Atraso_nas_Submissões_SPED = 543;
  TagKPI_Taxa_de_Auditoria_Bem_sucedida_SPED = 544;
  TagKPI_Índice_de_Rastreabilidade_SPED = 545;
  TagKPI_Volume_de_Registros_SPED = 546;
  TagKPI_Volume_de_Rateios_do_Período = 547;
  TagKPI_Média_de_Equipamentos_por_Rateio = 548;
  TagKPI_Retorno_sobre_Investimento = 549;
  TagKPI_Taxa_de_Precisão_no_Rateio = 550;
  TagKPI_Tempo_Médio_para_Rateio = 551;
  TagKPI_Taxa_de_Atraso_no_Rateio = 552;
  TagKPI_Taxa_de_Sucesso_em_Auditorias = 553;
  TagKPI_Valor_Médio_Por_Rateio = 554;
  TagKPI_Média_de_Cotas_por_Rateio = 555;
  TagKPI_Valor_Total_Rateio = 556;
  TagKPI_Taxa_de_Ocorrências_no_Período = 557;
  TagKPI_Taxa_de_Resolução_de_Ocorrências = 558;
  TagKPI_Custo_Médio_por_Ocorrência = 559;
  TagKPI_Taxa_de_Ocorrências_com_danos_Totais = 560;
  TagKPI_Taxa_de_Ocorrências_com_danos_Parciais = 561;
  TagKPI_Taxa_de_Ocorrências_com_Monta_Pequena = 562;
  TagKPI_Taxa_de_Ocorrências_com_Monta_Média = 563;
  TagKPI_Taxa_de_Ocorrências_com_Monta_Grande = 564;
  TagKPI_Índice_de_Recorrência = 565;
  TagKPI_Taxa_de_Ocorrências_em_Aberto = 566;
  TagKPI_Taxa_de_Recuperação_por_Sistema_Antifurto = 567;
  TagKPI_Média_de_Associados_Participantes_por_Ocorrência = 568;
  TagKPI_Valor_Total_de_Ocorrências = 569;
  TagKPI_Valor_Total_de_Equipamentos = 570;
  TagKPI_Média_de_Equipamentos_por_Associado = 571;
  TagKPI_Total_de_Equipamentos_no_Período = 572;
  TagKPI_Taxa_de_Equipamentos_Sem_Rateio = 573;
  TagKPI_Taxa_de_Equipamentos_Sem_Mensalidade = 574;
  TagKPI_Taxa_de_Equipamentos_sem_Rateio_Antifurto = 575;
  TagKPI_Taxa_de_Equipamentos_com_Boleto_Gerado = 576;
  TagKPI_Tempo_Médio_Entre_Ocorrências = 577;
  TagKPI_Taxa_de_Equipamentos_sem_Contribuição = 578;
  TagKPI_Taxa_de_Caminhões = 579;
  TagKPI_Taxa_de_Semi_Reboques = 580;
  TagKPI_Taxa_de_Veículos_sem_Atualização_Pela_Tabela_Fipe = 581;
  TagKPI_Média_de_Base_para_Rateio_no_Período = 582;
  TagKPI_Taxa_de_Boletos_Emitidos = 583;
  TagKPI_Taxa_de_Pagamento_Antecipado = 584;
  TagKPI_Tempo_Médio_de_Recebimento_Boletos_Eventuais = 585;
  TagKPI_Valor_Total_de_Boletos_Emitidos_Boletos_Eventuais = 586;
  TagKPI_Valor_Total_de_Boletos_Pagos_Boletos_Eventuais = 587;
  TagKPI_Taxa_de_Boletos_Pagos_Após_o_Vencimento = 588;
  TagKPI_Taxa_de_Inadimplência_Boletos_Eventuais = 589;
  TagKPI_Taxa_de_Boletos_Contestados_Boletos_Eventuais = 590;
  TagKPI_Taxa_de_Renegociação_de_Boletos_Boletos_Eventuais = 591;
  TagKPI_Taxa_de_Cancelamento_de_Boletos_Boletos_Eventuais = 592;
  TagKPI_Valor_Médio_por_Boleto_Emitido_Boletos_Eventuais = 593;
  TagKPI_Taxa_de_Conversão_de_Boletos_Emitidos_em_Pagamentos = 594;
  TagKPI_Enviados_para_Protesto = 595;
  TagKPI_Variação_da_Taxa_de_Emissão_no_Período = 596;
  TagKPI_Volume_de_Notas_Emitidas_Nfe = 598;
  TagKPI_Taxa_de_Notas_Fiscais_Rejeitadas = 599;
  TagKPI_Taxa_de_Notas_Fiscais_Canceladas_Nfe = 600;
  TagKPI_Taxa_de_Notas_Fiscais_Desconhecidas_Nfe = 601;
  TagKPI_Valor_Total_das_Notas_Emitidas_Nfe = 602;
  TagKPI_Valor_Total_dos_Impostos_Declarados_ICMS_ICMS_ST_IPI_PIS_Cofins_ISSQN_II = 603;
  TagKPI_Taxa_de_Notas_com_Acréscimo_Nfe = 604;
  TagKPI_Taxa_de_Notas_com_Frete_Nfe = 605;
  TagKPI_Taxa_de_Notas_sem_Faturamento_Nfe = 606;
  TagKPI_Taxa_de_Cartas_de_Correção_Emitidas = 607;
  TagKPI_Taxa_de_Notas_Emitidas_Após_Faturamento_Nfe = 608;
  TagKPI_Taxa_de_Notas_com_Desconto_Nfe = 609;
  TagKPI_Valor_Total_de_Notas_sem_Faturamento_Nfe = 610;
  TagKPI_Valor_Total_de_Desconto_Nfe = 611;
  TagKPI_Valor_Total_de_Notas_Após_Faturamento_Nfe = 612;
  TagKPI_Volume_de_Notas_Emitidas = 613;
  TagKPI_Valor_Total_das_Notas_Emitidas = 614;
  TagKPI_Taxa_de_Notas_Fiscais_Canceladas = 615;
  TagKPI_Taxa_de_Notas_Fiscais_Desconhecidas_NFCe = 616;
  TagKPI_Taxa_de_Notas_com_Acréscimo_NFCe = 617;
  TagKPI_Taxa_de_Notas_com_Desconto_NFCe = 618;
  TagKPI_Taxa_de_Notas_Emitidas_Após_Faturamento_NFCe = 619;
  TagKPI_Taxa_de_Notas_sem_Faturamento_NFCe = 620;
  TagKPI_Valor_Total_dos_Impostos_Declarados_ICMS_ICMS_ST_IPI_PIS_Cofins = 621;
  TagKPI_Valor_Total_de_Notas_Sem_Faturamento_NFCe = 622;
  TagKPI_Valor_Total_de_Notas_Após_Faturamento = 623;
  TagKPI_Valor_Total_de_Desconto_NFCe = 624;
  TagKPI_Volume_de_NFS_e_Emitidas = 625;
  TagKPI_NFS_e_Rejeitadas = 626;
  TagKPI_Valor_Total_das_NFS_e_Emitidas = 627;
  TagKPI_Valor_Total_dos_Impostos_Declarados = 628;
  TagKPI_Taxa_de_Notas_Canceladas = 629;
  TagKPI_Taxa_de_Notas_Fiscais_Desconhecidas = 630;
  TagKPI_Taxa_de_Notas_com_Acréscimo = 631;
  TagKPI_Taxa_de_Notas_com_Desconto = 632;
  TagKPI_Taxa_de_Notas_Emitidas_Após_Faturamento_NFSe = 633;
  TagKPI_Taxa_de_Notas_sem_Faturamento = 634;
  TagKPI_Taxa_de_Notas_com_Frete = 635;
  TagKPI_Taxa_de_Notas_Emitidas = 636;
  TagKPI_Valor_Total_de_Desconto_NFSe = 637;
  TagKPI_Valor_Total_de_Notas_Sem_Faturamento_NFSe = 638;
  TagKPI_Valor_Total_de_Notas_Emitidas_Após_Faturamento = 639;



  //ANTIGAS TEM REFERENCIAS
  Tag_KPI_Principal_Venda            = 640;
  Tag_KPI_Principal_Estoque          = 641;
  Tag_KPI_Principal_Producao         = 642;
  Tag_KPI_Principal_Financeiro       = 643;
  Tag_KPI_Principal_Compras          = 644;
  Tag_KPI_Last = Tag_KPI_Principal_Compras;
//  Tag_KPI_Financeiro_Modulo          = 1;
//  Tag_KPI_Financeiro_Balanco         = 2;
//  Tag_KPI_Financeiro_Atrasos         = 3;
//  Tag_KPI_Financeiro_Boleto          = 4;
//  Tag_KPI_Financeiro_Cartao          = 5;
//  Tag_KPI_Financeiro_Cheque          = 6;
//  Tag_KPI_Financeiro_Contratos       = 7;
//  Tag_KPI_Financeiro_Conciliacao     = 8;
//
//  Tag_KPI_Menu_Produto_Tipo          = 9;
//  Tag_KPI_Menu_Produto_Grupo         = 10;
//  Tag_KPI_Menu_Produto_Categoria     = 11;
//
//  Tag_KPI_Venda_MelhoresVendedores   = 12;
//  Tag_KPI_Venda_FaturamentoTipo      = 13;
//  Tag_KPI_Venda_ProdutoTipo          = 14;
//
//  Tag_KPI_Venda_MelhoresClientes     = 15;
//  Tag_KPI_Venda_MelhoresProdutos     = 16;
//  Tag_KPI_Venda_ImpressaoTipo        = 17;
//
//  Tag_KPI_Producao_OLE               = 18;
//  Tag_KPI_Producao_OTIF              = 19;
//  Tag_KPI_Producao_MTTR              = 20;
//  Tag_KPI_Producao_TempoMedioFalhas  = 21;
//  Tag_KPI_Producao_IndiceDesperdicio = 22;
//  Tag_KPI_Producao_IndiceAcidente    = 23;
//  Tag_KPI_Producao_IndiceAfastamento = 24;
//  Tag_KPI_Producao_IndiceTaxaSucessoVendas   = 25;
//
//  Tag_KPI_Notificacao_Urgentes               = 26;
//  Tag_KPI_Notificacao_Resolva_Primeiro       = 27;
//  Tag_KPI_Notificacao_Notificacoes           = 28;
//  Tag_KPI_Notificacao_Produção               = 29;
//  Tag_KPI_Notificacao_Produtos_Abaixo_Minimo = 30;
//
//  Tag_KPI_Conciliacao_Bancaria  = 31;
//  Tag_KPI_Conciliacao_Vendas    = 32;
//  Tag_KPI_Conciliacao_Compras   = 33;
//
//  Tag_KPI_Produto_Modulo        = 34;
//  Tag_KPI_Notificacoes_Modulo   = 35;
//  Tag_KPI_Conciliacao_Modulo    = 36;


procedure RegistraKPI(ATagKPI, ATagWR_APP: Integer; ADescricao, Observacao,
                      ATipo, ALink,
                      AText1, AText2, AText3, AText4,
                      AEvent_Click_Text1, AEvent_Click_Text2, AEvent_Click_Text3, AEvent_Click_Text4, AEvent_Click_Image : string;
                      AImageIndex, AGroupIndex, AIndexInGroup : Integer;
                      AFavorito, AMenu, ASubMenu, AAtivo :Boolean );

Var
  AWR_KPI : array [Tag_KPI_First..Tag_KPI_Last] of TWR_KPI;

implementation

procedure RegistraKPI(ATagKPI, ATagWR_APP: Integer; ADescricao, Observacao,
                      ATipo, ALink,
                      AText1, AText2, AText3, AText4,
                      AEvent_Click_Text1, AEvent_Click_Text2, AEvent_Click_Text3, AEvent_Click_Text4, AEvent_Click_Image : string;
                      AImageIndex, AGroupIndex, AIndexInGroup : Integer;
                      AFavorito, AMenu, ASubMenu, AAtivo :Boolean );
begin
  AWR_KPI[ATagKPI]                := TWR_KPI.Create;
  AWR_KPI[ATagKPI].Tag_KPI        := ATagKPI;
  AWR_KPI[ATagKPI].TagWR_APP      := ATagWR_APP;

  AWR_KPI[ATagKPI].Titulo         := ADescricao;
  AWR_KPI[ATagKPI].Observacao     := Observacao;

  AWR_KPI[ATagKPI].Text1          := AText1;
  AWR_KPI[ATagKPI].Text2          := AText2;
  AWR_KPI[ATagKPI].Text3          := AText3;
  AWR_KPI[ATagKPI].Text4          := AText4;

  AWR_KPI[ATagKPI].Event_Click_Text1 := AEvent_Click_Text1;
  AWR_KPI[ATagKPI].Event_Click_Text2 := AEvent_Click_Text2;
  AWR_KPI[ATagKPI].Event_Click_Text3 := AEvent_Click_Text3;
  AWR_KPI[ATagKPI].Event_Click_Text4 := AEvent_Click_Text4;
  AWR_KPI[ATagKPI].Event_Click_Image := AEvent_Click_Image;

  AWR_KPI[ATagKPI].SubMenu           := ASubMenu;      // Boolean
  AWR_KPI[ATagKPI].Menu              := AMenu;         // Boolean
  AWR_KPI[ATagKPI].Favorito          := AFavorito;     // Boolean

  AWR_KPI[ATagKPI].Tipo              := ATipo;         // String;
  AWR_KPI[ATagKPI].ImageIndex        := AImageIndex;   // Integer;
  AWR_KPI[ATagKPI].GroupIndex        := AGroupIndex;   // Integer;
  AWR_KPI[ATagKPI].IndexInGroup      := AIndexInGroup; // Integer;
  AWR_KPI[ATagKPI].Link              := ALink;         // String;

  AWR_KPI[ATagKPI].Ativo             := AAtivo;
end;

end.