unit wrSugestoes;

interface

Type
  TSugestao  = record
    Tag_APP : Integer;
    Tag_Tela : Integer;
    Titulo : String;
    Observacao : String;
    Link : String;
    Executa: Boolean;
  end;


procedure Cria_Lista_Sugestoes;
procedure AddSugestao(ATag_Sugestao, ATag_APP, ATag_Tela: Integer; ATitulo, AObservacao, ALink:String);
procedure Instalar;

Var
  Lista_Sugestoes : array [0..15] of TSugestao;

implementation

procedure AddSugestao(ATag_Sugestao, ATag_APP, ATag_Tela: Integer; ATitulo, AObservacao, ALink:String);
begin
  with Lista_Sugestoes[ATag_Sugestao] do
  begin
    Tag_APP       := ATag_APP;
    Tag_Tela      := ATag_Tela;
    Titulo        := ATitulo;
    Observacao    := AObservacao;
    Link          := ALink;
  end;
end;

procedure Cria_Lista_Sugestoes;
begin

end;

procedure Instalar;
begin
  // Configurar a Logo da Empresa,
  // Configurar os dados da empresa
  // Selecionar os m�dulos para a empresa (Cada m�dulo explicando o que faz)
  // Informar se � do simples nacional?
end;

procedure Treinamento_inicial;
begin
  // Fazer uma venda, de 1 produto padr�o,com parcela em 3 vezes,
  // mostrar o dinheiro na no financeiro como aparece


            //Textos auxiliares para informar como e por que foi decidido assim

  // Implanta��o focada em resultados
  // Especialistas qualificados e experientes que aliam o melhor sistema �s melhores t�cnicas da Engenharia de Produ��o

  // M�todo de implanta��o de sucesso aplicado por especialistas
  // Ao escolher a Nomus, sua ind�stria contar� com todos os benef�cios do sistema de gest�o ERP Industrial Nomus, e al�m disso, contar� tamb�m com uma consultoria de implanta��o de alta qualidade, focada em resultados e especializada em ind�strias.
  //  Buscamos aplicar os melhores m�todos da Engenharia de Produ��o para organizar seus processos, otimizar sua produ��o e aproveitar todo o potencial do seu neg�cio.
  //  Na Nomus a implanta��o � levada t�o � s�rio que fazemos quest�o que nossos Consultores de Implanta��o sejam especialistas em gest�o, tenham amplo conhecimento sobre processos industriais, e estejam prontos para apoiar sua ind�stria a atingir a excel�ncia na gest�o.

// Quais s�o os passos do M�todo de Implanta��o Nomus
//O M�todo de Implanta��o Nomus � dividido em 6 fases, o escopo de cada fase � claro, e a implanta��o de cada fase segue um roteiro passo a passo.
//
//Ao final de cada fase sua ind�stria j� utiliza o ERP Industrial no dia a dia, consegue enxergar os benef�cios alcan�ados e o retorno sobre o investimento realizado.

// Fase 1 � Primeiros Passos
//Fa�a o planejamento inicial do projeto, tenha uma vis�o geral do sistema e, caso tenha interesse, instale o sistema localmente na sua f�brica. (O padr�o � a utiliza��o do software na nuvem)
// Aqui deve mostrar os recusos que o sistema tem, Aplicativo(M�dulo), e deixar a pessoa escolher

//Fase 2 � Vendas, Faturamento
//
//Organize seu processo de vendas, gere propostas comerciais e pedidos de venda, emita notas fiscais eletr�nicas (NF-e) e notas fiscais de servi�o eletr�nicas (NFS-e).
//
//Controle contas a receber e contas a pagar, fa�a concilia��es banc�rias, emita boletos banc�rios para seus clientes, gerencie seu fluxo de caixa e monitore o resultado financeiro da sua f�brica.
//
//
//
//Fase 3 � Compras e Financeiro
//
//Organize seu processo de compras, gere solicita��es de compra, cota��es e pedidos de compra, importe NF-es de entrada e fa�a o recebimento.
//
//Fase 4 � Produ��o e Estoque
//
//Gere ordens de produ��o, registre o consumo de materiais pela produ��o, produ��es efetuadas, subprodutos gerados, e obtenha controle total do seu estoque.
//
//Organize a produ��o em terceiros, a produ��o para terceiros e atenda o Bloco K do SPED Fiscal.
//
//Fase 5 � Produ��o avan�ada
//
//Fa�a previs�es de venda, defina o plano mestre da produ��o, execute o MRP, e saiba exatamente o que produzir e comprar para manter seus estoques nos n�veis ideiais.
//
//Fa�a a programa��o detalhada da produ��o e apontamentos no ch�o de f�brica.
//
//Fase 6 � Custos e Contabilidade
//
//Defina o custo padr�o de produtos, considerando materiais, m�o de obra e custos indiretos de fabrica��o, e forme pre�os de venda com intelig�ncia.
//
//Apure o custo/hora de seus centros de custo, calcule o custo real de produtos, e descubra a margem de lucro efetiva de seus produtos.
//
//Integre estoque, apura��o de custo, e lan�amento financeiros com a contabilidade.
//
//
//
//Fase 7 � Gest�o da Qualidade
//
//Inspecione mat�rias primas no recebimento, inspecione produtos fabricados na produ��o, controle lotes e rastreabilidade.
//
//Analise n�o conformidades, gere relat�rios de qualidade e databooks em formato eletr�nico e com assinatura digital.
//


// N�o se preocupe com os resultados obitidos agora, pois temos especilista que iram analizar seus dados e explicar a melhor forma de obter um melhor controle integrado


//Como funciona a implanta��o da Nomus
//
//Confer�ncias online
//
//Seguindo boas pr�ticas para tirar o melhor proveito de reuni�es, a implanta��o da Nomus � realizada por confer�ncias online, onde sua equipe ir� interagir diretamente com o seu analista respons�vel pelo projeto. As reuni�es online possibilitam maior flexibilidade na sua agenda e um investimento reduzido.
//
//Implanta��o remota de um software erp industrial
//
//Reuni�es presenciais
//
//Entretanto, a Nomus � flex�vel e caso tenha interesse em uma implanta��o presencial sua equipe poder� optar por este m�todo ap�s conversar com o seu analista respons�vel pelo projeto.


end;


initialization
  Cria_Lista_Sugestoes;


end.
