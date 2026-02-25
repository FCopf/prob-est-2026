# Repensando a Estatística

Um Curso Bayesiano com Exemplos em R e Stan

Segunda Edição

Richard McElreath

Esta versão foi compilada em 8 de dezembro de 2019

## Sumário

| Prefácio à Segunda Edição | xi |
|---|---|
| Prefácio | xiii |
| Público-alvo | xiii |
| Estratégia didática | xiv |
| Como usar este livro | xiv |
| Instalando o pacote rethinking do R | xviii |
| Agradecimentos | xix |
| **Capítulo 1.** O Golem de Praga | 1 |
| 1.1. Golems estatísticos | 1 |
| 1.2. Repensando a estatística | 4 |
| 1.3. Ferramentas para engenharia de golems | 10 |
| 1.4. Resumo | 17 |
| **Capítulo 2.** Mundos Pequenos e Mundos Grandes | 19 |
| 2.1. O jardim dos dados que se bifurcam | 20 |
| 2.2. Construindo um modelo | 28 |
| 2.3. Componentes do modelo | 32 |
| 2.4. Fazendo o modelo funcionar | 36 |
| 2.5. Resumo | 46 |
| 2.6. Exercícios | 46 |
| **Capítulo 3.** Amostrando o Imaginário | 49 |
| 3.1. Amostragem a partir de uma posteriori por aproximação em grade | 52 |
| 3.2. Amostragem para resumir | 53 |
| 3.3. Amostragem para simular predição | 61 |
| 3.4. Resumo | 68 |
| 3.5. Exercícios | 69 |
| **Capítulo 4.** Modelos Geocêntricos | 73 |
| 4.1. Por que distribuições normais são normais | 74 |
| 4.2. Uma linguagem para descrever modelos | 79 |
| 4.3. Modelo gaussiano de altura | 81 |
| 4.4. Predição linear | 94 |
| 4.5. Curvas a partir de retas | 113 |
| 4.6. Resumo | 123 |
| 4.7. Exercícios | 123 |
| **Capítulo 5.** As Muitas Variáveis e os Waffles Espúrios | 127 |
| 5.1. Associação espúria | 129 |
| 5.2. Relação mascarada | 148 |
| 5.3. Variáveis categóricas | 157 |
| 5.4. Resumo | 162 |
| 5.5. Exercícios | 162 |
| **Capítulo 6.** O DAG Assombrado e o Terror Causal | 165 |
| 6.1. Multicolinearidade | 167 |
| 6.2. Viés de pós-tratamento | 174 |
| 6.3. Viés de colisor | 180 |
| 6.4. Confrontando a confusão | 187 |
| 6.5. Resumo | 193 |
| 6.6. Exercícios | 193 |
| **Capítulo 7.** A Bússola de Ulisses | 195 |
| 7.1. O problema com os parâmetros | 197 |
| 7.2. Entropia e acurácia | 206 |
| 7.3. Domando o Golem: Regularização | 218 |
| 7.4. Prevendo a acurácia preditiva | 221 |
| 7.5. Comparação de modelos | 229 |
| 7.6. Resumo | 239 |
| 7.7. Exercícios | 239 |
| **Capítulo 8.** Peixes-boi Condicionais | 241 |
| 8.1. Construindo uma interação | 243 |
| 8.2. Simetria das interações | 254 |
| 8.3. Interações contínuas | 257 |
| 8.4. Resumo | 264 |
| 8.5. Exercícios | 265 |
| **Capítulo 9.** Markov Chain Monte Carlo | 269 |
| 9.1. O Bom Rei Markov e seu reino insular | 270 |
| 9.2. Algoritmos de Metropolis | 273 |
| 9.3. Hamiltonian Monte Carlo | 276 |
| 9.4. HMC fácil: ulam | 284 |
| 9.5. Cuidado e alimentação da sua cadeia de Markov | 293 |
| 9.6. Resumo | 303 |
| 9.7. Exercícios | 303 |
| **Capítulo 10.** Grande Entropia e o Modelo Linear Generalizado | 307 |
| 10.1. Entropia máxima | 308 |
| 10.2. Modelos lineares generalizados | 320 |
| 10.3. Distribuições a priori de entropia máxima | 329 |
| 10.4. Resumo | 329 |
| **Capítulo 11.** Deus Adulterou os Inteiros | 331 |
| 11.1. Regressão binomial | 332 |
| 11.2. Regressão de Poisson | 353 |
| 11.3. Modelos multinomiais e categóricos | 366 |
| 11.4. Censura e sobrevivência | 373 |
| 11.5. Resumo | 378 |
| 11.6. Exercícios | 378 |
| **Capítulo 12.** Monstros e Misturas | 381 |
| 12.1. Contagens com sobredispersão | 381 |
| 12.2. Resultados zero-inflacionados | 388 |
| 12.3. Resultados categóricos ordinais | 392 |
| 12.4. Preditores categóricos ordinais | 403 |
| 12.5. Resumo | 409 |
| 12.6. Exercícios | 409 |
| **Capítulo 13.** Modelos com Memória | 413 |
| 13.1. Exemplo: Girinos multinível | 415 |
| 13.2. Efeitos variáveis e o trade-off entre subajuste e sobreajuste | 422 |
| 13.3. Mais de um tipo de agrupamento | 429 |
| 13.4. Transições divergentes e distribuições a priori não centradas | 434 |
| 13.5. Predições posteriores multinível | 440 |
| 13.6. Resumo | 445 |
| 13.7. Exercícios | 445 |
| **Capítulo 14.** Aventuras em Covariância | 449 |
| 14.1. Inclinações variáveis por construção | 451 |
| 14.2. Inclinações variáveis avançadas | 461 |
| 14.3. Instrumentos e delineamentos causais | 468 |
| 14.4. Relações sociais como efeitos variáveis correlacionados | 475 |
| 14.5. Categorias contínuas e o processo gaussiano | 481 |
| 14.6. Resumo | 498 |
| 14.7. Exercícios | 499 |
| **Capítulo 15.** Dados Ausentes e Outras Oportunidades | 501 |
| 15.1. Erro de medição | 503 |
| 15.2. Dados ausentes | 511 |
| 15.3. Erros categóricos e ausências discretas | 528 |
| 15.4. Resumo | 533 |
| 15.5. Exercícios | 533 |
| **Capítulo 16.** Loucura Linear Generalizada | 537 |
| 16.1. Pessoas geométricas | 538 |
| 16.2. Mentes ocultas e comportamento observado | 543 |
| 16.3. Quebra de nozes por equações diferenciais ordinárias | 549 |
| 16.4. Dinâmica populacional | 553 |
| 16.5. Resumo | 562 |
| 16.6. Exercícios | 562 |
| **Capítulo 17.** Horóscopos | 565 |
| Notas finais | 569 |
| Bibliografia | 583 |
| Índice de citações | 595 |

## Prefácio à Segunda Edição

Foi uma surpresa completa para mim ter escrito um livro de estatística. É ainda mais surpreendente o quão popular o livro se tornou. Mas eu havia me proposto a escrever o livro de estatística que eu gostaria de ter tido na pós-graduação. Ninguém deveria ter que aprender essas coisas do jeito que eu aprendi. Fico feliz que exista um público para se beneficiar do livro.

Foram 5 anos para escrevê-lo. Havia um conjunto inicial de notas de curso, derretidas e marteladas em um primeiro manuscrito de 200 páginas. Eu descartei aquele primeiro manuscrito. Mas ele me ensinou o esboço do livro que eu realmente queria escrever. Depois, vários anos de ensino com o manuscrito o refinaram ainda mais.

Na verdade, eu poderia ter continuado refinando-o a cada ano. Ir para a impressão carrega a penalidade de congelar um processo dinâmico, tanto de aprender a ensinar o material quanto de acompanhar as mudanças no próprio material. Com o passar do tempo, vejo mais elementos do livro que eu gostaria de ter feito de maneira diferente. Também recebi muitos comentários sobre o livro, e esses comentários me deram ideias para melhorá-lo.

Então, na segunda edição, coloquei essas ideias em ação. O objetivo de uma segunda edição é apenas refinar a estratégia que fez a primeira edição ser um sucesso. As principais mudanças são:

**O pacote R tem algumas ferramentas novas.** A ferramenta map da primeira edição ainda está aqui, mas agora se chama `quap`. Essa renomeação é apenas para evitar mal-entendidos. Nós a usávamos apenas para obter uma aproximação quadrática da distribuição a posteriori. Então agora ela é nomeada de acordo. Uma mudança maior é que `map2stan` foi substituída por `ulam`. A nova `ulam` é muito semelhante à `map2stan`, e em muitos casos pode ser usada de forma idêntica. Mas ela também é muito mais flexível, principalmente porque não faz suposições sobre a estrutura de GLM e permite tipos de variáveis explícitos dentro da lista de fórmulas. Todo o código `map2stan` ainda está no pacote e continuará funcionando. Mas agora `ulam` permite muito mais, especialmente nos capítulos posteriores. Ambas as ferramentas permitem amostrar da distribuição a priori, usando `extract.prior`, assim como da distribuição a posteriori. Isso ajuda com a próxima mudança.

**Muito mais simulação preditiva a priori.** Uma simulação preditiva a priori significa simular predições de um modelo, usando apenas a distribuição a priori em vez da distribuição a posteriori. Isso é muito útil para compreender as implicações de uma distribuição a priori. Havia apenas uma quantidade vestigial disso na primeira edição. Agora a maioria dos exemplos de modelagem tem alguma simulação preditiva a priori. Acho que essa é a adição mais útil à segunda edição, pois ajuda muito a compreender não apenas as distribuições a priori, mas também o próprio modelo.

**Mais ênfase na distinção entre predição e inferência.** O Capítulo 5, sobre regressão múltipla, foi dividido em dois capítulos. O primeiro capítulo foca nos aspectos úteis da regressão. O segundo foca nas maneiras pelas quais ela pode enganar. Isso permite também uma discussão mais direta sobre inferência causal. Isso significa que os DAGs — grafos acíclicos dirigidos — fazem uma aparição. O capítulo sobre sobreajuste, agora Capítulo 7, também é mais direto ao alertar sobre a natureza preditiva dos critérios de informação e da validação cruzada. A validação cruzada e as aproximações por amostragem de importância (PSIS-LOO) são agora discutidas explicitamente.

**Novos tipos de modelo.** O Capítulo 4 agora termina com *B-splines*. O capítulo sobre modelos de contagem, Capítulo 11, agora inclui um exemplo de resposta ao item (análise fatorial). O Capítulo 12 contém uma análise de sobrevivência com censura. O Capítulo 14 tem um exemplo de regressão de distância filogenética. E há um capítulo inteiramente novo, o Capítulo 16, que foca em modelos que não são facilmente concebidos como GLMMs.

**Alguns novos exemplos de dados.** Há alguns novos exemplos de dados, como a série temporal histórica das cerejeiras japonesas em flor e um conjunto de dados maior sobre evolução de primatas, com 300 espécies e uma filogenia correspondente.

**Mais apresentação de modelos Stan puros.** Há vários lugares agora onde o código de modelo Stan puro é explicado, dentro de boxes opcionais. Espero que isso facilite a transição para trabalhar diretamente em Stan. Mas o texto principal permanece em script R, usando as ferramentas didáticas do pacote rethinking.

**Gentileza e persistência.** Como na primeira edição, tentei tornar o material o mais gentil possível. Nada disso é fácil, e a jornada rumo à compreensão é longa e assombrada. É importante que os leitores esperem que a confusão e a compreensão parcial sejam normais. Essa é também a razão pela qual não mudei a estratégia básica de modelagem do livro.

Primeiro, eu forço o leitor a especificar explicitamente cada suposição do modelo. Alguns leitores da primeira edição me pressionaram para usar ferramentas de fórmulas simplificadas como brms ou rstanarm. Esses são pacotes fantásticos, e evoluir para usá-los após este livro é recomendado. Mas não vejo como uma pessoa possa chegar a compreender o modelo ao usar essas ferramentas. As distribuições a priori ficarem ocultas não é a parte mais limitante. Ao contrário, como fórmulas de modelos lineares do tipo `y ~ (1|x) + z` não mostram os parâmetros, nem sequer todos os termos, não é fácil ver como o modelo matemático se relaciona com o código. No final, é mais gentil ser um pouco cruel e exigir mais trabalho. Então as listas de fórmulas permanecem. Neste livro, você está programando a log-posteriori, até a relação exata entre cada variável e coeficiente. Você me agradecerá depois.

Segundo, metade do livro se passa antes de o MCMC aparecer. Alguns leitores da primeira edição queriam que eu começasse pelo MCMC. Não faço isso porque Bayes não é sobre MCMC. Nós buscamos a distribuição a posteriori, mas há muitas aproximações legítimas dela, e o MCMC é apenas um conjunto de estratégias. Usar a aproximação quadrática na primeira metade também permite uma conexão mais clara com algoritmos não bayesianos. E como encontrar a aproximação quadrática é rápido, isso significa que os leitores não precisam lutar com coisas demais ao mesmo tempo. Novamente, trata-se de ser gentil.

Richard McElreath
Leipzig, 10 de agosto de 2019

## Prefácio

> Pedreiros, quando começam uma construção,
> Têm cuidado de testar os andaimes;
>
> Certificam-se de que as tábuas não escorregarão nos pontos movimentados,
> Prendem todas as escadas, apertam as juntas parafusadas.
>
> E, no entanto, tudo isso desmorona quando o trabalho termina,
> Revelando paredes de pedra segura e sólida.
>
> Então, se, minha querida, às vezes parecer haver
> Velhas pontes se rompendo entre você e eu,
>
> Não tema. Podemos deixar os andaimes caírem,
> Confiantes de que construímos nosso muro.
>
> — "Scaffolding" por Seamus Heaney, 1939–2013

Este livro pretende ajudá-lo a elevar seu conhecimento e sua confiança em modelagem estatística. Ele foi pensado como um andaime, que permitirá a você construir o muro de que precisa, mesmo que depois o descarte. Como resultado, este livro ensina o material de maneira muitas vezes inconveniente, forçando-o a realizar cálculos passo a passo que normalmente são automatizados. A razão de toda essa trabalheira algorítmica é garantir que você compreenda os detalhes o suficiente para fazer escolhas e interpretações razoáveis em seu próprio trabalho de modelagem. Portanto, embora você vá avançar para usar mais automação, é importante ir devagar no início. Levante seu muro, e então deixe os andaimes caírem.

### Público-alvo

O público principal são pesquisadores nas ciências naturais e sociais, sejam novos doutorandos ou profissionais experientes, que tiveram um curso básico de regressão mas ainda assim permanecem desconfortáveis com modelagem estatística. Esse público aceita que há algo vagamente errado com a prática estatística típica do início do século XXI, dominada como está por valores-*p* e um confuso zoológico de procedimentos de teste. Eles veem métodos alternativos em revistas e livros. Mas essas pessoas não têm certeza de aonde ir para aprender sobre esses métodos.

Como consequência, este livro não argumenta realmente contra valores-*p* e afins. O problema, na minha opinião, não são tanto os valores-*p* em si, mas o conjunto de rituais estranhos que evoluíram ao redor deles, nas selvas das ciências, assim como a exclusão de tantas outras ferramentas úteis. Portanto, o livro assume que o leitor está pronto para tentar fazer inferência estatística sem valores-*p*. Esta não é a situação ideal. Seria melhor ter material que o ajude a identificar erros comuns e mal-entendidos sobre valores-*p* e testes em geral, pois todos nós precisamos compreender essas coisas, mesmo que não as usemos. Então tentei incluir um pouco desse material de forma sub-reptícia, mas infelizmente não posso dedicar muito espaço a isso. O livro ficaria muito longo e perturbaria o fluxo didático do material.

É importante perceber, no entanto, que a desconsideração aos valores-*p* não é uma atitude exclusivamente bayesiana. De fato, os testes de significância podem ser — e já foram — formulados como um procedimento bayesiano também. Portanto, a escolha de evitar testes de significância é estimulada por preocupações epistemológicas, algumas das quais são brevemente discutidas no primeiro capítulo.

### Estratégia didática

O livro usa muito mais código de computador do que matemática formal. Mesmo matemáticos excelentes podem ter dificuldade para compreender uma abordagem, até que vejam um algoritmo funcionando. Isso ocorre porque a implementação em forma de código remove todas as ambiguidades. Portanto, material desse tipo é mais fácil de aprender, se você também aprender a implementá-lo.

Além de qualquer valor pedagógico na apresentação de código, tanta coisa em estatística é agora computacional que uma abordagem puramente matemática é de qualquer forma insuficiente. Como você verá nas partes posteriores deste livro, o mesmo modelo estatístico matemático pode às vezes ser implementado de maneiras diferentes, e as diferenças importam. Portanto, quando você avançar para além deste livro em direção a modelagem estatística mais avançada ou especializada, a ênfase computacional aqui o ajudará a reconhecer e lidar com todo tipo de problemas práticos.

Cada seção do livro é na verdade apenas a ponta de um iceberg. Não fiz nenhuma tentativa de ser exaustivo. Em vez disso, tentei explicar algo bem. Nessa tentativa, entrecruzei muitos conceitos e material em exemplos de análise de dados. Então, em vez de ter unidades tradicionais sobre, por exemplo, centralização de variáveis preditoras, desenvolvi esses conceitos no contexto de uma narrativa sobre análise de dados. Esse certamente não é um estilo que funciona para todos os leitores. Mas funcionou para muitos dos meus alunos. Suspeito que fracasse dramaticamente para aqueles que estão sendo forçados a aprender essa informação. Para os internamente motivados, reflete como realmente aprendemos essas habilidades no contexto de nossas pesquisas.

### Como usar este livro

Este livro não é uma referência, mas um curso. Ele não tenta suportar acesso aleatório. Em vez disso, espera acesso sequencial. Isso tem imensas vantagens pedagógicas, mas tem a desvantagem de violar a forma como a maioria dos cientistas realmente lê livros.

Este livro tem muito código, integrado completamente no texto principal. A razão para isso é que fazer estatística baseada em modelos no século XXI realmente requer programação, pelo menos de um tipo menor. O código não é opcional. Em todos os lugares, errei pelo lado de incluir código demais, em vez de muito pouco. Na minha experiência ensinando programação científica, novatos aprendem mais rapidamente quando têm código funcional para modificar, em vez de precisar escrever um algoritmo do zero. Minha geração foi provavelmente a última que teve que aprender alguma programação para usar um computador, e por isso programar ficou cada vez mais difícil de ensinar com o passar do tempo. Meus alunos são muito letrados digitalmente, mas às vezes não têm nenhuma ideia de como código de computador se parece.

**O que o livro pressupõe.** Este livro não tenta ensinar o leitor a programar, no sentido mais básico. Ele assume que você fez um esforço básico para aprender a instalar e processar dados em R. Na maioria dos casos, uma introdução curta à programação em R será suficiente. Sei que muitas pessoas acharam útil o *R for Beginners* de Emmanuel Paradis. Você pode encontrá-lo e muitos outros guias para iniciantes aqui:

http://cran.r-project.org/other-docs.html

Para aproveitar este livro, você já deve saber que `y <- 7` armazena o valor 7 no símbolo `y`. Você deve saber que símbolos que terminam com parênteses são funções. Deve reconhecer um loop e entender que comandos podem ser embutidos dentro de outros comandos (recursão). Saber que o R *vetoriza* muito código, em vez de usar loops, é importante. Mas você não precisa ainda estar confiante com programação em R.

Inevitavelmente, você encontrará elementos do código neste livro que nunca viu antes. Fiz um esforço para explicar quaisquer truques de programação particularmente importantes ou incomuns no meu próprio código. Na verdade, este livro gasta muito tempo explicando código. Faço isso porque os estudantes realmente precisam. A menos que consigam conectar cada comando à receita e ao objetivo, quando as coisas dão errado, eles não saberão se é por causa de um erro menor ou maior. A mesma questão surge quando ensino teoria evolutiva matemática — estudantes e colegas frequentemente sofrem de habilidades de álgebra enferrujadas, então quando não conseguem a resposta certa, muitas vezes não sabem se é por causa de algum pequeno deslize matemático ou de algum problema na estratégia. As explicações prolongadas de código neste livro visam construir um nível de compreensão que permita ao leitor diagnosticar e corrigir problemas.

**Por que R?.** Este livro usa R pela mesma razão que usa o inglês: muitas pessoas já o conhecem. O R é conveniente para fazer estatística computacional. Mas muitas outras linguagens são perfeitamente adequadas. Também recomendo Python (especialmente PyMC) e Julia. A primeira edição acabou com traduções de código para várias linguagens e estilos. Esperemos que a segunda edição também tenha.

**Usando o código.** Os exemplos de código no livro são marcados por uma caixa sombreada, e a saída do código de exemplo é frequentemente impressa logo abaixo da caixa sombreada, mas marcada em fonte de largura fixa. Por exemplo:

```r
# R code 0.1
print( "All models are wrong, but some are useful." )
```

```
[1] "All models are wrong, but some are useful."
```

Ao lado de cada trecho de código, você encontrará um número que pode ser buscado no arquivo de trechos de código que acompanha o livro, disponível no website do livro. A intenção é que o leitor acompanhe, executando o código nas caixas sombreadas e comparando sua própria saída com a impressa no livro. Eu realmente quero que você execute o código, porque assim como não se pode aprender artes marciais assistindo filmes de Bruce Lee, você não pode aprender a programar modelos estatísticos apenas lendo um livro. Você tem que entrar lá e dar alguns socos e, do mesmo modo, levar alguns golpes.

Se você ficar confuso, lembre-se de que pode executar cada linha independentemente e inspecionar os cálculos intermediários. É assim que se aprende e também se resolvem problemas. Por exemplo, aqui está uma maneira confusa de multiplicar os números 10 e 20:

```r
# R code 0.2
x <- 1:2
x <- x * 10
x[1] * x[2]
```

```
[1] 200
```

Se você não compreender um passo específico, sempre pode imprimir o conteúdo do símbolo `x` imediatamente após aquele passo. Para os exemplos de código, é assim que você passa a compreendê-los. Para seu próprio código, é assim que encontra a origem de quaisquer problemas e os corrige.

**Seções opcionais.** Refletindo o realismo de como livros como este são realmente lidos, há dois tipos de seções opcionais: (1) Repensando e (2) Pensando Mais um Pouco. As seções Repensando se parecem com isto:

> **Repensando: Pense novamente.** O objetivo desses boxes Repensando é fornecer um contexto mais amplo para o material. Eles aludem a conexões com outras abordagens, fornecem contexto histórico ou apontam mal-entendidos comuns. Esses boxes são opcionais, mas complementam o material e convidam a uma reflexão mais profunda.

As seções Pensando Mais um Pouco se parecem com isto:

> [!NOTE]
> **Pensando Mais um Pouco: Colocando a mão na massa.** Essas seções, compostas em tipo menor, fornecem explicações mais detalhadas de código ou matemática. Este material não é essencial para compreender o texto principal. Mas tem muito valor, especialmente em uma segunda leitura. Por exemplo, às vezes importa como você realiza um cálculo. A matemática nos diz que essas duas expressões são equivalentes:
>
> $$p_1 = \log(0.01^{200})$$
>
> $$p_2 = 200 \times \log(0.01)$$
>
> Mas quando você usa o R para calculá-las, elas produzem respostas diferentes:
>
> ```r
> # R code 0.3
> ( log( 0.01^200 ) )
> ( 200 * log(0.01) )
> ```
>
> ```
> [1] -Inf
> [1] -921.034
> ```
>
> A segunda linha é a resposta correta. Esse problema surge por causa de erros de arredondamento, quando o computador arredonda valores decimais muito pequenos para zero. Isso perde *precisão* e pode introduzir erros substanciais na inferência. Como resultado, quase sempre fazemos cálculos estatísticos usando o logaritmo de uma probabilidade, em vez da probabilidade em si.

Você pode ignorar a maioria dessas seções Pensando Mais um Pouco em uma primeira leitura.

**A linha de comando é a melhor ferramenta.** Programar no nível necessário para realizar inferência estatística no século XXI não é tão complicado, mas é desconhecido no início. Por que não simplesmente ensinar o leitor a fazer tudo isso com um programa de apontar e clicar? Há grandes vantagens em fazer estatística com comandos de texto, em vez de apontar e clicar em menus.

Todo mundo sabe que a linha de comando é mais poderosa. Mas ela também economiza seu tempo e cumpre obrigações éticas. Com um script de comandos, cada análise se documenta sozinha, de modo que anos depois você pode voltar à sua análise e replicá-la exatamente. Você pode reutilizar seus arquivos antigos e enviá-los para colegas. Apontar e clicar, no entanto, não deixa rastro de migalhas. Um arquivo com seus comandos R dentro dele deixa. Uma vez que você adquira o hábito de planejar, executar e preservar suas análises estatísticas dessa maneira, isso se paga muitas vezes. Com apontar e clicar, você paga mais adiante, em vez de apenas no início. Também é um requisito ético básico da ciência que nossas análises sejam totalmente documentadas e reprodutíveis. A integridade da revisão por pares e o progresso acumulativo da pesquisa dependem disso. Um programa estatístico de linha de comando torna essa documentação natural. Uma interface de apontar e clicar, não. Seja ético.

Portanto, não usamos a linha de comando porque somos radicais ou elitistas (embora possamos ser). Usamos a linha de comando porque é melhor. É mais difícil no início. Ao contrário da interface de apontar e clicar, você precisa aprender um conjunto básico de comandos para começar com uma interface de linha de comando. No entanto, as vantagens éticas e de economia de custos valem a inconveniência.

**Como você deve trabalhar.** Mas eu seria cruel se apenas dissesse ao leitor para usar uma ferramenta de linha de comando, sem também explicar algo sobre como fazê-lo. Você precisa reaprender alguns hábitos, mas não é uma grande mudança. Para leitores que usaram apenas software estatístico baseado em menus, haverá um reajuste significativo. Mas após alguns dias, parecerá natural. Para leitores que usaram software estatístico baseado em comandos como Stata e SAS, ainda há algum reajuste pela frente. Explicarei a abordagem geral primeiro. Depois direi por que mesmo usuários de Stata e SAS estão diante de uma mudança.

A abordagem sã para criar scripts de análises estatísticas é trabalhar alternando entre dois aplicativos: (1) um *editor de texto puro* de sua escolha e (2) o programa R rodando em um terminal. Existem vários aplicativos que integram o editor de texto com o console R. O mais popular deles é o RStudio. Ele tem muitas opções, mas na verdade é apenas uma interface que inclui tanto um editor de scripts quanto um terminal R.

Um editor de texto puro é um programa que cria e edita arquivos de texto simples, sem formatação. Exemplos comuns incluem o Bloco de Notas (no Windows), o TextEdit (no Mac OS X) e o Emacs (na maioria das distribuições UNIX, incluindo Mac OS X). Há também uma ampla seleção de editores de texto sofisticados especializados para programadores. Você pode investigar, por exemplo, o RStudio e o editor de texto Atom, ambos gratuitos. Note que arquivos do MSWord não são texto puro.

Você usará um editor de texto puro para manter um registro contínuo dos comandos que alimenta no aplicativo R para processamento. Você absolutamente não quer simplesmente digitar comandos diretamente no R. Em vez disso, você quer copiar e colar linhas de código do seu editor de texto puro para o R, ou então ler arquivos de script inteiros diretamente no R. Você pode digitar comandos diretamente no R enquanto explora dados ou depura ou simplesmente experimenta. Mas seu trabalho sério deve ser implementado através do editor de texto puro, pelas razões explicadas na seção anterior.

Você pode adicionar comentários aos seus scripts R para ajudá-lo a planejar o código e lembrar depois o que o código está fazendo. Para fazer um comentário, basta começar uma linha com o símbolo `#`. Para ajudar a esclarecer a abordagem, abaixo forneço um script completo muito curto para executar uma regressão linear em um dos conjuntos de dados integrados do R. Mesmo que você ainda não saiba o que o código faz, espero que o veja como um modelo básico de clareza de formatação e uso de comentários.

```r
# R code 0.4
# Load the data:
# car braking distances in feet paired with speeds in km/h
# see ?cars for details
data(cars)

# fit a linear regression of distance on speed
m <- lm( dist ~ speed , data=cars )

# estimated coefficients from the model
coef(m)

# plot residuals against speed
plot( resid(m) ~ speed , data=cars )
```

Mesmo aqueles que estão familiarizados com scripts em Stata ou SAS terão algum reajuste pela frente. Programas como Stata e SAS têm um paradigma diferente para como as informações são processadas. Nessas aplicações, comandos procedurais como PROC GLM são emitidos em imitação de comandos de menu. Esses procedimentos produzem uma massa de saída padrão que o usuário então filtra. O R não se comporta assim. Em vez disso, o R força o usuário a decidir quais informações deseja. Ajusta-se um modelo estatístico no R e depois é preciso emitir comandos posteriores para fazer perguntas sobre ele. Esse paradigma mais interrogativo se tornará familiar através dos exemplos no texto. Mas esteja ciente de que você vai assumir um papel mais ativo na decisão de quais perguntas fazer sobre seus modelos.

### Instalando o pacote rethinking do R

Os exemplos de código requerem que você tenha instalado o pacote rethinking do R. Este pacote contém os exemplos de dados e muitas das ferramentas de modelagem que o texto utiliza. O pacote rethinking depende de outro pacote, rstan, para ajustar os modelos mais avançados na segunda metade do livro.

Você deve instalar o rstan primeiro. Navegue seu navegador de internet até mc-stan.org e siga as instruções para sua plataforma. Você precisará instalar tanto um compilador C++ (também chamado de "cadeia de ferramentas") quanto o pacote rstan. As instruções para instalar ambos estão em mc-stan.org. Então, de dentro do R, você pode instalar o rethinking e suas dependências com este código:

```r
install.packages(c("coda","mvtnorm","devtools"))
library(devtools)
devtools::install_github("rmcelreath/rethinking",ref="Experimental")
```

(O argumento `ref` fornece o branch Experimental, que contém as novas ferramentas para a 2ª edição. Quando a 2ª edição entrar no ar, este se tornará o branch master.) Note que o rethinking não está no repositório de pacotes CRAN, pelo menos não ainda. Você sempre poderá fazer uma simples busca na internet e descobrir as instruções de instalação atuais para a versão mais recente do pacote rethinking. Se encontrar algum bug ao usar o pacote, você pode verificar github.com/rmcelreath/rethinking para ver se uma solução já foi publicada. Se não, pode deixar um relatório de bug e ser notificado quando uma solução estiver disponível. Além disso, todo o código-fonte do pacote está lá, caso você aspire a fazer algumas modificações por conta própria. Sinta-se livre para fazer um "fork" do pacote e moldá-lo à sua vontade.

## Agradecimentos

Muitas pessoas contribuíram com conselhos, ideias e reclamações para este livro. As mais importantes entre elas foram os estudantes de pós-graduação que fizeram cursos de estatística comigo na última década, assim como os colegas que vieram a mim em busca de orientação. Essas pessoas me ensinaram como ensiná-las este material e, em alguns casos, aprendi o material apenas porque elas precisavam. Um grande número de indivíduos doou seu tempo para comentar seções do livro ou o código computacional que o acompanha. Estes incluem: Rasmus Bååth, Ryan Baldini, Bret Beheim, Maciek Chudek, John Durand, Andrew Gelman, Ben Goodrich, Mark Grote, Dave Harris, Chris Howerton, James Holland Jones, Jeremy Koster, Andrew Marshall, Sarah Mathew, Karthik Panchanathan, Pete Richerson, Alan Rogers, Cody Ross, Noam Ross, Aviva Rossi, Kari Schroeder, Paul Smaldino, Rob Trangucci, Shravan Vasishth, Annika Wallin e uma quantidade de revisores anônimos. Bret Beheim e Dave Harris foram corajosos o suficiente para fornecer comentários extensivos sobre um rascunho inicial. Caitlin DeRango e Kotrina Kajokaite investiram seu tempo em melhorar vários capítulos e conjuntos de problemas. Mary Brooke McEachern forneceu opiniões cruciais sobre conteúdo e apresentação, assim como apoio calmo e tolerância. Vários revisores anônimos forneceram comentários detalhados sobre capítulos individuais. Nenhuma dessas pessoas concorda com todas as escolhas que fiz, e todos os erros e deficiências permanecem sob minha responsabilidade. Mas especialmente quando não concordamos, suas opiniões tornaram o livro mais forte.

O livro é dedicado ao Dr. Parry M. R. Clarke (1977–2012), que me pediu para escrevê-lo. O questionamento incansável de Parry sobre métodos estatísticos, matemáticos e computacionais ajudou todos ao seu redor. Ele nos tornou melhores.
