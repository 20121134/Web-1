20010613
SciELO - problema na paginacao: se o n�mero era 3 ele sumia. Explica��o em parser2result no procedimento 4, caso o valor de h (format) � %, � usado para separar as ocorrencias, caso o conte�do contenha espa�o em branco, caso contr�rio os espa�os em branco s�o usados para a quebra de linha (occ). O erro estava na programa��o, que ao inv�s de verificar se h=%, verificava o contr�rio, quebrando as occ em 3, que era o valor de h.

Novo sistema: Conference
tabelas de convers�o


20010604
Novo sistema: Conference
tabelas de convers�o

20010419
Thesis - tabelas de convers�o para o elemento order ser gravado em todos os registros.


20010411
Scielo-lilacs: nome e sobrenome do autor PAULO M. C. DE; ou Fulano Dos Santos.

20010403
Thesis - problema na funcao de isodb.isoupdate: erro de isis.dll
	- cria��o de mais diret�rios e campos no form para acessar o registro de configura��o e construir a estrutura de diret�rios.
	a) dir: orgname, ano, nome do diret�rio livre, base, nome da base segundo o diret�rio
	b) configuration: orgname, ano, nome e sobrenome do autor

20010328
BVSLaw - problema com tabelas em html colocadas em um �nico registro. Solu��o: criar arquivos com o conte�do da tabela (conte�do de <table></table>). 

20010319
BVSLaw - problema na fun��o LawStructureLevel. Faltou set reg = copy.copy. Sem isso, a copia do "registro" nao era feita, ent�o este era alterado em seguida, e a cada itera��o, o registro ficava cada vez maior e com conte�do errado, pois n�o era a c�pia que era manipulada, sen�o o pr�prio registro.

20010308
BVSLaw - imagem est� em registro errado, devido a separa��o de um trecho da lei em v�rios registros. Solu��o: tentar manter o m�ximo as partes em um mesmo registro em mais de uma ocorr�ncia. Inser��o de ^qb no fim de cada ocorr�ncia quando se trata de uma quebra de par�grafo.

Outros problemas: alguns elementos faltaram no arquivo 2db, como figgrp, table, link com devidos elementos, nos escopos de body e attach. Solu��o copiar todos os arquivos da versao 1.3 para 1.2

20010302
Scielo - bug: altera��o na busca das referencias no texto completo. Porque em alguns casos os trechos no texto completo pode estar separados em mais de uma linha.


20010301
BVSLaw - imagem no texto: novo elemento/atributo filename para identificar o nome do arquivo da imagem.
		subcampo: ^9
Scielo - altera��o na busca das referencias no texto completo. Porque em alguns casos os trechos no texto completo pode estar separados em mais de uma linha.

20010219
Scielo - fazer link de author no body (como para as referencias)
	- alterar artmodel.mst
	- alterar programa
20010213
Scielo - fazer link de author no body (como para as referencias)
	- alterar artmodel.mst
	- alterar programa

20010209
Lilacs - campo 38 deve ser repetitivo e n�o com ocorr�ncias separadas por %
	 campos de confer�ncia

20010208
Scielo - registro lilacs - afiliacao nao est� indo em alguns casos, provavelmente por causa da ausencia do endere�o.

20010207
BVSLaw - formul�rio de administra��o da base n�o habilitado ao iniciar 
	-> fazer leitura dos dados de bvs antes.
	-> altera��es em detalhes de visualiza��o.

20010206
BVSLaw - arquivo bvslaw.ini,  state e as bases artigon foram tiradas.

20010201
BVSLaw - artno -> part e partno em link

20010124
BVSLaw - dava erro por usar strcomp sem o parametro de comparacao

20010123
BVSLaw - criar (registro de) index somente para partes, senao o registro estoura

20010116
Revista da FAPESP - tabelas

20010112
BVSLaw - o campo 67 de country nao estava sendo carregado com a nova versao, provocando erro na recupera��o das palavras.
	- alterei tamb�m a montagem da estrutura das leis. Era gerado o mesmo valor de chave para conte�dos em escopos diferentes.


20010110
Lilacs - campo 38=nd -> nao enviar o campo 38
BVSLaw - inclus�o de atributos para leis internacionais
	- faltou inserir o campo 67 de pa�s no registro lilacs
	- novo campo em lawmod12 -> campo 904 para conte�dos repetitivos
	- como inserir dados de link??? -> 
		- texto do link est� no campo 203^l (repetitivo)
		- as informa��es do link est�o no campo 37 (repetitivo)
		- testes com link.pft (guardado em library\bvslaw)


20010109
BVSLaw - link -> bvslaw 1.2, inclusao de atributos para link


20010104
SciELO - scielo.ini -> apresenta��o dos t�tulos das revistas no formul�rio, excluindo as revistas usadas somente para relat�rios e altera��o do programa para n�o incluir linhas em branco no combo do formul�rio para as revistas exclu�das

20010103
BVSLaw - estrutura de diret�rios
	escopo apenas para leitura e comparacao com o documento -> modifica��o no arquivo bvslaw.ini em [CfgRec] e 
[DirInfo]

LILACS - cria��o de uma fun��o que completa a localiza��o da afilia��o


20010102
BVSLaw - library
incluir atributos novos: lorgname, esource, scopegrp
alteracoes dos atributos: 
	authorsp - aparece em mais um nivel
	country - repetitivo
	title	- repetitivo, a marcacao deve inserir o caracter % entre cada ocorrencia. Alteracao no conversor para aceitar %.
		


20001222
Bvslaw - library
Erro na descricao das tabelas para os elementos flutuantes quando eles aparecem no front e no back.


20001219
- tratamento de part sem header
- article, paragraph, etc muito grandes, nao cabem em um �nico registro, dividir em mais de um.
- lilacs: 
	campo 38: codigo em minuscula, nd = "", fig = ilus
	campo 8: url do artigo


20001218
- tratamento de part sem header
- article, paragraph, etc muito grandes, nao cabem em um �nico registro, dividir em mais de um.

20001215
BVSLaw 
- tratamento de part sem header
- article, paragraph, etc muito grandes, nao cabem em um �nico registro, dividir em mais de um.

20001214
Deixar  o menu habilitado opcionalmente para Administracao das bd.

20001212
Thesis
Arquivos de entrada e library e labels
Inclui campo 709 para guardar o nome da DTD
Os nomes dos diretorios em caixa baixa.

20001127
Fazer os descritores tag scheme, campo 85, repetitiva, acompanhando cada keyword.
Alterei artmodel os registros de scheme e keyword, acrescentando em ambos o campo v5 com conteudo keygrp:, assim sendo, o conteudo de cada campo v85 (scheme ou keyword) sao ligados por um indice, isto �, o conte�do do subcampo ^i.

20001121
Administra��o das Bases de Dados - Recriar a base iso-list

20001116 - bvslaw
Testes - Arquivo com estouro do limite de registro

20001116 - bvslaw
Arquivo com estouro do limite de registro.

20001116
Para procurar as refer�ncias do markup no texto completo, estava faltando remover do body as entidades &lt; e &gt;, as quais foram incluidas no arquivo enthtml.txt do diretorio common.

Titulo das revistas no registro l da Lilacs nao estava sendo convertido para DOS.

20001113
Adminsitracao da base de dados - Regerar a base de administracao a partir das bases de dados que foram geradas pelo conversor

20001108
Procurar simplificar o conversor
Funcao para administrar a base de dados para gerar registros na base de administracao para as bases geradas antes da existencia desta base de administracao.

20001107
Para procurar as refer�ncias do markup no texto completo, estava faltando remover do markup as entidades, al�m disso, na funcao de busca por uma referencia estava incorreto o modo de atualizar as informacoes da 'compactacao' das refer�ncias marcadas e, por isso, a funcao nao conseguia encontrar as demais.

20001031
Adminsitracao da base de dados
Permitir que sejam apagadas as bases criadas pelo conversor

20001019
Form About

Versao generica do conversor
Lilacs