20011031
Erro no t'tilo de n�mero. O programa recupera para os campos sem preenchimento o valor do idioma preenchido.

20010201
Na legenda bibliogr�fica estava errado a abrevia��o de n�mero em ingl�s. Assim como suplemento.

20010119
Lista de Study Area n�o estava sendo mostrada por completo.
es_field.ini - com linha a mais

20001121
Havia erro ao mostrar o titulo abreviado da legenda, estava sendo mostrado o suplemento

20001101
Issue - Abrir um n�mero (issue), o volume, n�mero e suplemento de suas legendas s�o recuperados do formul�rio e n�o da base de dados. Isto foi percebido devido a necessidade de inserir na base de dados um n�mero especial, cuja identifica��o � spec, mas nas legendas � special, especial e especial.

20001020 Correction
Problema na funcao LoadCodes do modulo global
Para recuperar um par (value, code), inseria teoricamente duas vezes cada par, cujas chaves ora era value, ora era code, mas em alguns casos tanto valor como seu codigo eram iguais, nao sendo possivel inserir duas vezes. Foi entao modificado a funcao Item da ColCode para procurar  pela chave representada por code e caso nao encontre procurar pelos valores um a um. Foi tambem modificado as iteracoes que usando step 2 (por causa da suposta duplicidade). Este problema ocorreu tambem na versao anterior a esta e tambem ja esta corrigida.

20000616 Correction
Havia erro na selecao de secoes???

1999??? Update 
Mais amig�vel
Possibilidade de ver todos os numeros e numeros sequenciais de uma dada revista.
Remover numeros
Alterar os numeros sequenciais
Renumerar os issues
T�tulos de fasc�culos de acordo com idioma
