# Datasets — Statistical Rethinking (2ª edição)

**Autor:** Richard McElreath
**Ano:** 2019
**Diretório de dados:** `mcelreath-2019-data-sets/`
**PDF:** `mcelreath-2019.pdf`
**Capítulos disponíveis:** Cap. 1–17 (em `mcelreath-2019-capitulos-md-eng/`)

---

## Visão geral

Os datasets de *Statistical Rethinking* são empregados para ilustrar o raciocínio bayesiano aplicado a problemas reais da ciência social, biologia, ecologia e antropologia. O livro usa os dados progressivamente para introduzir modelos lineares, regressão múltipla, modelos mistos, modelos de contagem (Poisson, binomial), séries temporais e modelos de redes. Os arquivos CSV usam ponto-e-vírgula (`;`) como separador e aspas nos nomes de variáveis categóricas. Arquivos `.rda` contêm objetos R pré-salvos (matrizes de distância, listas de modelos ajustados etc.).

Os 17 capítulos do livro estão disponíveis em `mcelreath-2019-capitulos-md-eng/`. As indicações de capítulo abaixo foram verificadas por busca textual nesses arquivos. Datasets marcados como "(não encontrado nos capítulos em Markdown)" podem ser mencionados nos capítulos com variações de nome, em exercícios finais ou em contextos não capturados pela conversão para Markdown.

---

## Lista de datasets

### AMTL

- **Arquivo:** `AMTL.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/AMTL.csv`
- **Tamanho:** 115 KB

#### Descrição
Dados de antemortem tooth loss (AMTL) — perda de dentes em vida — em espécimes arqueológicos e contemporâneos de *Homo sapiens*. Cada linha corresponde a uma classe dentária de um espécime.

#### Variáveis principais
`tooth_class`, `specimen`, `num_amtl`, `sockets`, `age`, `stdev_age`, `prob_male`, `genus`, `pop`

#### Contexto no livro
Capítulos avançados sobre modelos de contagem e sobrevivência. Usado para modelar o número de dentes perdidos em função da idade e sexo, com heterogeneidade entre populações.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Regressão de Poisson ou binomial negativa; modelos hierárquicos com variação por população arqueológica.

#### Observações
`AMTL_short.csv` é uma versão reduzida do mesmo dataset.

---

### AMTL_short

- **Arquivo:** `AMTL_short.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/AMTL_short.csv`
- **Tamanho:** 33 KB

#### Descrição
Subconjunto de `AMTL.csv` com menos observações. Utilizado para exemplos computacionalmente mais leves.

#### Variáveis principais
Idênticas ao `AMTL.csv`.

#### Contexto no livro
Mesmos capítulos de `AMTL.csv`; versão simplificada para exemplos didáticos.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Mesmos modelos de contagem do arquivo completo.

#### Observações
Derivado de `AMTL.csv`.

---

### Achehunting

- **Arquivo:** `Achehunting.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Achehunting.csv`
- **Tamanho:** 398 KB

#### Descrição
Dados de caça dos Aché, povo indígena do Paraguai. Registros longitudinais de esforço de caça e retorno de carne por indivíduo ao longo do tempo.

#### Variáveis principais
`month`, `day`, `year`, `id`, `age`, `kg.meat`, `hours`, `datatype`

#### Contexto no livro
Capítulos sobre modelos de efeitos mistos e curvas de aprendizagem (skill development). Ilustra como a produtividade de caçadores varia com a idade e a experiência.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Modelos de efeitos mistos (hierárquicos) com curvas de aprendizagem; regressão Gamma para dados de retorno de alimento.

#### Observações
Um dos maiores arquivos do pacote; campo `datatype` distingue observações diretas de estimativas.

---

### AustinCats

- **Arquivo:** `AustinCats.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/AustinCats.csv`
- **Tamanho:** 2,8 MB (maior arquivo CSV)

#### Descrição
Dados de abrigo de animais da cidade de Austin (Texas), contendo registros de entrada e saída de gatos, com informações de raça, cor, idade e tipo de evento (adoção, transferência, fuga etc.).

#### Variáveis principais
`id`, `days_to_event`, `date_out`, `out_event`, `date_in`, `in_event`, `breed`, `color`, `intake_age`

#### Contexto no livro
Capítulos sobre análise de sobrevivência (survival analysis). Modela o tempo até a saída do abrigo (adoção ou outro desfecho).

**Capítulos:** cap-11

#### Uso analítico
Modelos de tempo-a-evento (exponencial, Weibull); análise de sobrevivência bayesiana com censura.

#### Observações
Dataset real de administração pública; variável `days_to_event` é censurada para animais que ainda estavam no abrigo.

---

### Boxes

- **Arquivo:** `Boxes.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Boxes.csv`
- **Tamanho:** 6,5 KB

#### Descrição
Dados de um experimento de cognição social com crianças de diferentes culturas. Cada criança escolhe entre caixas baseada em pistas sociais (maioria e não-maioria).

#### Variáveis principais
`y` (escolha), `gender`, `age`, `majority_first`, `culture`

#### Contexto no livro
Capítulos sobre modelos mistos categóricos e cognição social comparativa.

**Capítulos:** cap-16

#### Uso analítico
Modelos binomiais hierárquicos; comparação entre culturas.

#### Observações
Arquivos `Boxes_model.rda`, `Boxes_model_age.rda` e `Boxes_model_gender.rda` contêm modelos ajustados.

---

### Boxes_model / Boxes_model_age / Boxes_model_gender

- **Arquivos:** `Boxes_model.rda`, `Boxes_model_age.rda`, `Boxes_model_gender.rda`
- **Formato:** RDA (objeto R serializado)
- **Localização:** `mcelreath-2019-data/`

#### Descrição
Modelos bayesianos pré-ajustados ao dataset `Boxes.csv`, variando pelas covariáveis usadas na análise (modelo base, com idade, com gênero).

#### Contexto no livro

**Capítulos:** cap-16

#### Uso analítico
Objetos `ulam` ou `quap` do pacote `rethinking`; usados para comparação de modelos.

---

### Crofoot

- **Arquivo:** `Crofoot.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Crofoot.csv`
- **Tamanho:** 1,8 KB

#### Descrição
Dados de interações competitivas entre grupos de primatas (macacos-aranha ou babuínos), registrando resultados de confrontos entre díades de grupos.

#### Variáveis principais
`focal`, `other`, `dyad`, `win`, `dist_focal`, `dist_other`, `n_focal`, `n_other`, `m_focal`, `m_other`, `f_focal`, `f_other`

#### Contexto no livro
Capítulos sobre modelos de redes (network models) e dominância social.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Modelos de Bradley-Terry; regressão de rede hierárquica para prever vitórias em confrontos.

---

### Dinosaurs

- **Arquivo:** `Dinosaurs.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Dinosaurs.csv`
- **Tamanho:** 1,2 KB

#### Descrição
Dados de crescimento de espécies de dinossauros. Registra massa corporal estimada em função da idade para múltiplas espécies.

#### Variáveis principais
`age`, `mass`, `species`, `sp_id`

#### Contexto no livro
Capítulos sobre modelos não-lineares e curvas de crescimento.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Modelos de crescimento de von Bertalanffy; regressão não-linear bayesiana.

---

### Dissertations

- **Arquivo:** `Dissertations.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Dissertations.csv`
- **Tamanho:** 102 KB

#### Descrição
Dados de dissertações de doutorado por área e ano, incluindo número de páginas e área do conhecimento.

#### Variáveis principais
`pages`, `major`, `year`

#### Contexto no livro
Capítulos sobre regressão com efeitos mistos e variação por grupo (área de conhecimento).

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Modelos hierárquicos com variação por área; comparação de distribuições de contagem/tamanho.

---

### Fieldgoals

- **Arquivo:** `Fieldgoals.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Fieldgoals.csv`
- **Tamanho:** 4,6 KB

#### Descrição
Dados de chutes a gol (field goals) de jogadores de futebol americano (NFL), com contagens de tentativas e acertos.

#### Variáveis principais
`player`, `FGM` (field goals made), `FGA` (field goals attempted), `X2PM`, `X2PA`

#### Contexto no livro
Capítulos sobre modelos binomiais e contração (shrinkage) em modelos hierárquicos.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Modelo binomial hierárquico; shrinkage de proporções de acerto por jogador.

---

### Fish

- **Arquivo:** `Fish.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Fish.csv`
- **Tamanho:** 4,3 KB

#### Descrição
Dados de pesca em um parque natural. Contagem de peixes capturados por grupos de visitantes em função de variáveis de comportamento e composição do grupo.

#### Variáveis principais
`fish_caught`, `livebait`, `camper`, `persons`, `child`, `hours`

#### Contexto no livro
Capítulos sobre modelos de contagem com excesso de zeros (zero-inflated Poisson).

**Capítulos:** cap-12

#### Uso analítico
Modelo ZIP (Zero-Inflated Poisson) ou hurdle model.

---

### Hoogland

- **Arquivo:** `Hoogland.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Hoogland.csv`
- **Tamanho:** 37 KB

#### Descrição
Dados de dispersão de prairie dogs (cão-da-pradaria), espécie de roedor norte-americano, em função de relações de parentesco.

#### Variáveis principais
`Species`, `Year`, `Male`, `NoDisperse`, `Mother`, `Sisters`, `Bros`, `ClanSize`, `AllKin`

#### Contexto no livro
Capítulos sobre modelos hierárquicos e evolução do comportamento social.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Modelos logísticos hierárquicos para prever dispersão; análise de seleção por parentesco.

---

### Howell1

- **Arquivo:** `Howell1.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Howell1.csv`
- **Tamanho:** 12 KB

#### Descrição
Dados antropométricos de adultos !Kung San (povo indígena do Kalahari), incluindo altura, peso, idade e sexo. Dataset clássico de demonstração de regressão linear bayesiana.

#### Variáveis principais
`height`, `weight`, `age`, `male`

#### Contexto no livro
**Capítulo 4** (Modelos Geocêntricos) e **Capítulo 5**: principal dataset introdutório para regressão linear. Aparece repetidamente ao longo do livro.

**Capítulos:** cap-04, cap-05, cap-16

#### Uso analítico
Regressão linear simples; curvas de crescimento não-lineares; regressão múltipla com interações.

#### Observações
Um dos datasets mais usados no livro. Derivado de pesquisa de Nancy Howell.

---

### Howell2

- **Arquivo:** `Howell2.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Howell2.csv`
- **Tamanho:** 21 KB

#### Descrição
Versão expandida de `Howell1.csv`, incluindo dados de crianças e variável de morte (`alive`/`age.at.death`). Permite modelar crescimento ao longo de todo o ciclo de vida.

#### Variáveis principais
`age.at.death`, `age`, `alive`, `male`, `height`, `weight`

#### Contexto no livro
Capítulos sobre regressão não-linear e modelos de sobrevivência.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Curvas de crescimento não-lineares; análise de sobrevivência.

---

### Hurricanes

- **Arquivo:** `Hurricanes.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Hurricanes.csv`
- **Tamanho:** 3,4 KB

#### Descrição
Dados de furacões históricos nos EUA (1950–2012), incluindo número de mortes, categoria do furacão, pressão atmosférica e feminilidade do nome.

#### Variáveis principais
`name`, `year`, `deaths`, `category`, `min_pressure`, `damage_norm`, `female`, `femininity`

#### Contexto no livro
Capítulos sobre modelos de contagem (binomial negativa) e análise de controle de confundimento.

**Capítulos:** cap-12

#### Uso analítico
Regressão de binomial negativa; análise causal sobre viés em nomes femininos de furacões.

---

### KosterLeckie

- **Arquivo:** `KosterLeckie.rda`
- **Formato:** RDA
- **Localização:** `mcelreath-2019-data/KosterLeckie.rda`
- **Tamanho:** 4,5 KB

#### Descrição
Dados de redes sociais de compartilhamento de alimentos em comunidade indígena da Nicarágua (Koster & Leckie 2014).

#### Variáveis principais
(objeto R com estrutura de rede — díades de indivíduos e intensidade de troca)

#### Contexto no livro
Capítulos sobre modelos de redes sociais.

**Capítulos:** cap-14

#### Uso analítico
Modelos de rede hierárquicos; correlações entre pares de díades.

---

### Kline / islands / Kline2

- **Arquivos:** `Kline.csv`, `islands.csv`, `Kline2.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/`

#### Descrição
Dados sobre complexidade do toolkit de ferramentas em ilhas da Oceânia, com dados de população e contato entre ilhas. `Kline2.csv` adiciona coordenadas geográficas.

#### Variáveis principais
`culture`, `population`, `contact`, `total_tools`, `mean_TU`, e (em `Kline2`) `lat`, `lon`, `logpop`

#### Contexto no livro
Capítulos sobre modelos de contagem (Poisson) e efeitos de rede/espaço.

**Capítulos:** cap-11, cap-12 (Kline); cap-14 (Kline2, islandsDistMatrix)

#### Uso analítico
Regressão de Poisson; modelos Gaussian process (GP) com matriz de distância geográfica (`islandsDistMatrix.rda`).

---

### islandsDistMatrix

- **Arquivo:** `islandsDistMatrix.rda`
- **Formato:** RDA
- **Localização:** `mcelreath-2019-data/islandsDistMatrix.rda`

#### Descrição
Matriz de distâncias geográficas entre as ilhas da Oceânia do dataset `Kline`/`islands`.

#### Contexto no livro

**Capítulos:** cap-14

#### Uso analítico
Covariância de Gaussian Process (kernel de distância); correlações espaciais entre culturas.

---

### Laffer

- **Arquivo:** `Laffer.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Laffer.csv`
- **Tamanho:** 334 bytes

#### Descrição
Dados de países sobre alíquota de imposto e receita fiscal. Ilustra a *Curva de Laffer* (relação não-linear entre imposto e arrecadação).

#### Variáveis principais
`tax_rate`, `tax_revenue`

#### Contexto no livro
Capítulos sobre modelos não-lineares e splines.

**Capítulos:** cap-07

#### Uso analítico
Regressão spline (B-splines, basis splines); modelos não-lineares.

---

### Lynx_Hare / Lynx_Hare_dep / Lynx_Hare_model

- **Arquivos:** `Lynx_Hare.csv`, `Lynx_Hare_dep.rda`, `Lynx_Hare_model.rda`
- **Formato:** CSV e RDA
- **Localização:** `mcelreath-2019-data/`

#### Descrição
Série histórica clássica de dinâmica predador-presa: populações anuais de linces canadenses (*Lynx canadensis*) e lebres-das-neves (*Lepus americanus*) de 1900 a 1920, extraída dos registros da Hudson Bay Company.

#### Variáveis principais
`Year`, `Lynx`, `Hare`

#### Contexto no livro
Capítulos sobre séries temporais e modelos dinâmicos (state-space models).

**Capítulos:** cap-16 (Lynx_Hare, Lynx_Hare_model)

#### Uso analítico
Modelos de estado-espaço; modelos diferenciais de Lotka-Volterra ajustados por Stan.

---

### Mites

- **Arquivo:** `Mites.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Mites.csv`
- **Tamanho:** 429 bytes

#### Descrição
Série temporal de abundância de ácaros predadores e presas em experimento de laboratório.

#### Variáveis principais
`day`, `prey`, `predator`

#### Contexto no livro
Capítulos sobre modelos dinâmicos de predador-presa.

**Capítulos:** cap-16

#### Uso analítico
Modelos de estado-espaço; modelos de Lotka-Volterra em tempo discreto.

---

### Monks

- **Arquivo:** `Monks.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Monks.csv`
- **Tamanho:** 5 KB

#### Descrição
Dados sociométricos de um mosteiro, com avaliações mútuas de afeição e antipatia entre pares de monges (dyad-level social network data). Baseado no estudo clássico de Sampson (1969).

#### Variáveis principais
`dyad_id`, `A`, `B`, `like_AB`, `like_BA`, `dislike_AB`, `dislike_BA`, `A_name`, `B_name`

#### Contexto no livro
Capítulos sobre modelos de redes sociais e correlações entre díades.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Modelos de rede hierárquicos; correlações entre relações recíprocas.

---

### Moralizing_gods

- **Arquivo:** `Moralizing_gods.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Moralizing_gods.csv`
- **Tamanho:** 35 KB

#### Descrição
Dados históricos sobre a presença de deuses moralizantes (que punem comportamentos imorais) e a complexidade social de civilizações ao longo do tempo.

#### Variáveis principais
`polity`, `year`, `population`, `moralizing_gods`, `writing`

#### Contexto no livro
Capítulos sobre causalidade e confundimento; análise de dados históricos longitudinais.

**Capítulos:** cap-15

#### Uso analítico
Modelos de painel; análise de series temporais hierárquicas; DAGs causais.

---

### NWOGrants

- **Arquivo:** `NWOGrants.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/NWOGrants.csv`
- **Tamanho:** 479 bytes

#### Descrição
Dados de concessão de bolsas de pesquisa pela Netherlands Organisation for Scientific Research (NWO), por área e gênero do solicitante.

#### Variáveis principais
`discipline`, `gender`, `applications`, `awards`

#### Contexto no livro
Capítulos sobre confundimento e viés de gênero; analogia estrutural com o paradoxo de Berkeley. Encontrado por referência em figura no capítulo 15.

**Capítulos:** cap-15

#### Uso analítico
Modelo binomial; análise de viés de seleção; DAGs causais.

---

### Oxboys

- **Arquivo:** `Oxboys.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Oxboys.csv`
- **Tamanho:** 5 KB

#### Descrição
Dados longitudinais de altura de meninos de Oxford (*Oxford Boys* dataset), medidos em múltiplas ocasiões.

#### Variáveis principais
`Subject`, `age`, `height`, `Occasion`

#### Contexto no livro
Capítulos sobre modelos mistos longitudinais.

**Capítulos:** cap-14

#### Uso analítico
Modelos de efeitos mistos com interceptos e inclinações aleatórias por indivíduo.

---

### Panda_nuts

- **Arquivo:** `Panda_nuts.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Panda_nuts.csv`
- **Tamanho:** 2 KB

#### Descrição
Dados de quebra de nozes por chimpanzés jovens, coletados para estudar o desenvolvimento de habilidades de uso de ferramentas em função da idade.

#### Variáveis principais
`chimpanzee`, `age`, `sex`, `hammer`, `nuts_opened`, `seconds`, `help`

#### Contexto no livro
Capítulos sobre curvas de aprendizagem e modelos não-lineares.

**Capítulos:** cap-16

#### Uso analítico
Regressão não-linear bayesiana; curvas de crescimento de habilidade.

---

### Primates301 / Primates301_distance_matrix / Primates301_nex / Primates301_vcov_matrix

- **Arquivos:** `Primates301.csv`, `Primates301_distance_matrix.rda`, `Primates301_nex.rda`, `Primates301_vcov_matrix.rda`
- **Formato:** CSV e RDA
- **Localização:** `mcelreath-2019-data/`

#### Descrição
Dados comparativos de 301 espécies de primatas, incluindo tamanho do cérebro, tamanho corporal, tamanho do grupo, parâmetros reprodutivos e comportamento de aprendizagem social.

#### Variáveis principais
`name`, `genus`, `species`, `social_learning`, `research_effort`, `brain`, `body`, `group_size`, `gestation`, `weaning`, `longevity`, `sex_maturity`, `maternal_investment`

#### Contexto no livro
Capítulos sobre filogenética comparativa e Gaussian Processes.

**Capítulos:** cap-14 (Primates301, Primates301_nex)

#### Uso analítico
Modelos filogenéticos com matriz de covariância (`vcov_matrix`); Ornstein-Uhlenbeck GP; controles filogenéticos.

---

### PrussianHorses

- **Arquivo:** `PrussianHorses.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/PrussianHorses.csv`
- **Tamanho:** 3,4 KB

#### Descrição
Dados históricos clássicos: mortes por coice de cavalos no exército prussiano por corpo e por ano (1875–1894). Dataset seminal na teoria de distribuição de Poisson (Bortkiewicz, 1898).

#### Variáveis principais
`kicks`, `year`, `corps`

#### Contexto no livro
Capítulos sobre modelos de Poisson e eventos raros.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Regressão de Poisson; modelo canônico de eventos raros.

---

### Rinder

- **Arquivo:** `Rinder.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Rinder.csv`
- **Tamanho:** 415 bytes

#### Descrição
Dados de mortalidade por Rinderpest (praga bovina) em rebanhos de gado, estratificados por tamanho de rebanho.

#### Variáveis principais
`herd`, `stock` (large/small), `n`, `mortality`

#### Contexto no livro
Capítulos sobre modelos binomiais e variação em taxas de mortalidade.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Modelo binomial; análise de heterogeneidade em taxas de mortalidade.

---

### Trolley

- **Arquivo:** `Trolley.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Trolley.csv`
- **Tamanho:** 588 KB

#### Descrição
Dados de julgamentos morais coletados via *trolley problem* (dilema do bonde), com respostas ordinais de indivíduos em diferentes cenários éticos (ação, intenção, contato).

#### Variáveis principais
`case`, `response` (1–7), `order`, `id`, `age`, `male`, `edu`, `action`, `intention`, `contact`, `story`, `action2`

#### Contexto no livro
Capítulos sobre modelos ordinais (cumulative logit) e modelos hierárquicos com variação individual.

**Capítulos:** cap-12, cap-13

#### Uso analítico
Modelo de regressão ordinal (cumulative logit); modelos mistos com efeitos aleatórios por indivíduo.

---

### UCBadmit / UCBadmit_long

- **Arquivos:** `UCBadmit.csv`, `UCBadmit_long.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/`

#### Descrição
Dados agregados de admissão na UC Berkeley por departamento e gênero do candidato (1973). Dataset clássico do Paradoxo de Simpson: na visão global as mulheres são admitidas em menor proporção, mas dentro de cada departamento isso se inverte.

#### Variáveis principais
`dept`, `applicant.gender`, `admit`, `reject`, `applications`

#### Contexto no livro
**Capítulo 5** (e posteriores): exemplo central do Paradoxo de Simpson e backdoor criterion em DAGs causais.

**Capítulos:** cap-11, cap-12, cap-14

#### Uso analítico
Modelo binomial estratificado; análise de confundimento; DAG causal.

---

### UFClefties

- **Arquivo:** `UFClefties.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/UFClefties.csv`
- **Tamanho:** 5,2 KB

#### Descrição
Dados de lutas do UFC (Ultimate Fighting Championship), com registro de vitórias/derrotas e lateralidade (canhoto ou destro) dos lutadores.

#### Variáveis principais
`fight`, `episode`, `fight.in.episode`, `fighter1.win`, `fighter1`, `fighter2`, `fighter1.lefty`, `fighter2.lefty`

#### Contexto no livro
Capítulos sobre modelos binomiais e vantagens de lateralidade em combate.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Modelo binomial; análise de vantagem de canhotos em esportes de combate.

---

### WaffleDivorce

- **Arquivo:** `WaffleDivorce.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/WaffleDivorce.csv`
- **Tamanho:** 3,2 KB

#### Descrição
Dados dos 50 estados americanos contendo taxas de divórcio, taxas de casamento, idade mediana ao casar, número de restaurantes Waffle House per capita e indicador de estado sulista.

#### Variáveis principais
`Location`, `Loc`, `Population`, `MedianAgeMarriage`, `Marriage`, `Marriage SE`, `Divorce`, `Divorce SE`, `WaffleHouses`, `South`, `Slaves1860`, `Population1860`, `PropSlaves1860`

#### Contexto no livro
**Capítulo 5** (As Muitas Variáveis e as Falsas Correlações): dataset de abertura do capítulo, ilustra correlações espúrias e o uso de regressão múltipla como controle para confundimento.

**Capítulos:** cap-05, cap-06, cap-07, cap-15

#### Uso analítico
Regressão linear múltipla; análise de correlação espúria; DAGs causais.

---

### Wines2012

- **Arquivo:** `Wines2012.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Wines2012.csv`
- **Tamanho:** 6,4 KB

#### Descrição
Dados de degustação de vinhos de 2012, com pontuações de juízes americanos e franceses para vinhos americanos e franceses.

#### Variáveis principais
`judge`, `flight`, `wine`, `score`, `wine.amer`, `judge.amer`

#### Contexto no livro
Capítulos sobre modelos hierárquicos de variação entre grupos.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Modelos hierárquicos com variação por juiz e vinho; análise de viés cultural.

---

### Wolfdice

- **Arquivo:** `Wolfdice.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/Wolfdice.csv`
- **Tamanho:** 303 bytes

#### Descrição
Resultados de lançamentos de dados coloridos (vermelho e branco), usados para demonstrar princípios de probabilidade conjunta e atualização bayesiana.

#### Variáveis principais
`red`, `white`, `count`

#### Contexto no livro
Capítulos introdutórios (Cap. 2–3) sobre probabilidade e inferência bayesiana.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Cálculo de probabilidades conjuntas; demonstração do teorema de Bayes.

---

### bangladesh

- **Arquivo:** `bangladesh.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/bangladesh.csv`
- **Tamanho:** 39 KB

#### Descrição
Dados de pesquisa demográfica e de saúde com mulheres do Bangladesh, registrando uso de contraceptivos em função de características individuais e do distrito de residência.

#### Variáveis principais
`woman`, `district`, `use.contraception`, `living.children`, `age.centered`, `urban`

#### Contexto no livro
Capítulos sobre modelos hierárquicos e variação por grupos (distritos).

**Capítulos:** cap-13, cap-14

#### Uso analítico
Modelo logístico hierárquico (multilevel); efeitos aleatórios por distrito.

---

### cherry_blossoms

- **Arquivo:** `cherry_blossoms.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/cherry_blossoms.csv`
- **Tamanho:** 28 KB

#### Descrição
Série histórica de florescimento das cerejeiras em Kyoto, Japão, desde 801 AD até o presente. Inclui o dia do ano da primeira flor e temperatura estimada do mês de março.

#### Variáveis principais
`year`, `doy` (dia do ano da primeira flor), `temp`, `temp_upper`, `temp_lower`

#### Contexto no livro
**Capítulo 4**: exemplo de splines e regressão não-linear para capturar tendências de longo prazo em dados históricos.

**Capítulos:** cap-04

#### Uso analítico
Regressão spline (B-splines); detecção de tendências climáticas de longo prazo.

---

### chimpanzees

- **Arquivo:** `chimpanzees.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/chimpanzees.csv`
- **Tamanho:** 8,8 KB

#### Descrição
Dados experimentais de comportamento prossocial de chimpanzés. Em cada tentativa, um chimpanzé escolhe puxar uma alavanca esquerda ou direita, com ou sem parceiro presente. A opção prossocial provê comida a ambos, enquanto a opção egoísta só provê ao ator.

#### Variáveis principais
`actor`, `recipient`, `condition`, `block`, `trial`, `prosoc_left`, `chose_prosoc`, `pulled_left`

#### Contexto no livro
Capítulos sobre modelos logísticos com efeitos fixos e aleatórios por indivíduo.

**Capítulos:** cap-11, cap-13, cap-14

#### Uso analítico
Regressão logística; modelos mistos com variação por ator e por bloco experimental.

---

### elephants

- **Arquivo:** `elephants.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/elephants.csv`
- **Tamanho:** 263 bytes

#### Descrição
Dados de sucesso reprodutivo (número de acasalamentos) de elefantes machos africanos em função da idade.

#### Variáveis principais
`AGE`, `MATINGS`

#### Contexto no livro
Capítulos sobre modelos de contagem (Poisson) e relação entre idade e sucesso reprodutivo.

**Capítulos:** cap-15

#### Uso analítico
Regressão de Poisson; modelagem de curvas de sucesso reprodutivo.

---

### foxes

- **Arquivo:** `foxes.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/foxes.csv`
- **Tamanho:** 2,3 KB

#### Descrição
Dados de raposas urbanas (*Vulpes vulpes*) em grupos que defendem territórios. Inclui medidas de qualidade do habitat, tamanho do grupo e peso corporal individual.

#### Variáveis principais
`group`, `avgfood`, `groupsize`, `area`, `weight`

#### Contexto no livro
**Capítulo 5** (exercícios finais): análise de caminhos causais; distinguir efeitos diretos e indiretos de disponibilidade de alimento sobre peso.

**Capítulos:** cap-05, cap-07

#### Uso analítico
Regressão linear múltipla; análise de caminhos (path analysis); DAG causal.

---

### galapagos

- **Arquivo:** `galapagos.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/galapagos.csv`
- **Tamanho:** 2,8 KB

#### Descrição
Dados de biodiversidade das ilhas Galápagos: número de espécies de répteis e plantas em função de características geográficas das ilhas (área, elevação, distância de ilhas vizinhas e da ilha principal de Santa Cruz).

#### Variáveis principais
`ISLAND`, `TOTAL`, `NATIVE`, `AREA`, `ELEV`, `DISTNEAR`, `DISTSC`, `AREANEAR`

#### Contexto no livro
Capítulos sobre modelos de contagem e relações espécies-área.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Regressão de Poisson; modelos log-lineares de biogeografia.

---

### homeworkch3.R

- **Arquivo:** `homeworkch3.R`
- **Formato:** Script R
- **Localização:** `mcelreath-2019-data/homeworkch3.R`
- **Tamanho:** 438 bytes

#### Descrição
Script R de suporte com dados para os exercícios do Capítulo 3.

#### Contexto no livro
**Capítulo 3** (Amostrando o Imaginário): exercícios de distribuições de probabilidade.

**Capítulos:** cap-03

#### Uso analítico
Suporte a exercícios; cálculos de probabilidade bayesiana.

---

### metal_bands

- **Arquivo:** `metal_bands.csv`
- **Formato:** CSV (`;`, com BOM UTF-8)
- **Localização:** `mcelreath-2019-data/metal_bands.csv`
- **Tamanho:** 4,4 KB

#### Descrição
Dados por país de número de bandas de heavy metal, tamanho da população e índice de felicidade. Usado para ilustrar correlações espúrias.

#### Variáveis principais
`Territory`, `Bands`, `Population`, `Happiness`

#### Contexto no livro
Capítulos sobre correlação espúria e confundimento.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Regressão linear; análise de correlação espúria.

#### Observações
Arquivo contém BOM (Byte Order Mark) UTF-8; pode requerer tratamento especial na leitura em R.

---

### milk

- **Arquivo:** `milk.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/milk.csv`
- **Tamanho:** 2 KB

#### Descrição
Dados comparativos da composição do leite de diferentes espécies de primatas. Inclui teor calórico, gordura, proteína e lactose, além de tamanho do neocórtex relativo.

#### Variáveis principais
`clade`, `species`, `kcal.per.g`, `perc.fat`, `perc.protein`, `perc.lactose`, `mass`, `neocortex.perc`

#### Contexto no livro
**Capítulo 5**: exemplo de regressão múltipla com dados faltantes (`NA`) na variável `neocortex.perc`; análise de multicolinearidade.

**Capítulos:** cap-05, cap-06, cap-15

#### Uso analítico
Regressão linear múltipla; imputação bayesiana de dados faltantes; análise de multicolinearidade.

---

### nettle

- **Arquivo:** `nettle.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/nettle.csv`
- **Tamanho:** 2,9 KB

#### Descrição
Dados de diversidade linguística por país, com o número de línguas em função de características ecológicas (duração e variabilidade da estação de crescimento).

#### Variáveis principais
`country`, `num.lang`, `area`, `k.pop`, `num.stations`, `mean.growing.season`, `sd.growing.season`

#### Contexto no livro
Capítulos sobre regressão múltipla e hipóteses ecológicas sobre diversidade cultural.

**Capítulos:** cap-08

#### Uso analítico
Regressão de Poisson ou linear com log da resposta; análise de relação ecologia–diversidade.

---

### reedfrogs

- **Arquivo:** `reedfrogs.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/reedfrogs.csv`
- **Tamanho:** 1,3 KB

#### Descrição
Dados experimentais de sobrevivência de girinos de rã-de-junco (*Hyperolius* spp.) em tanques com diferentes condições de densidade, predação e tamanho inicial.

#### Variáveis principais
`density`, `pred` (predador presente/ausente), `size`, `surv`, `propsurv`

#### Contexto no livro
Capítulos sobre modelos hierárquicos e variação entre tanques (varying intercepts).

**Capítulos:** cap-13

#### Uso analítico
Modelo binomial hierárquico; demonstração de shrinkage e pooling parcial entre grupos.

---

### rugged

- **Arquivo:** `rugged.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/rugged.csv`
- **Tamanho:** 50 KB

#### Descrição
Dataset dos países do mundo com índice de rugosidade do terreno (*terrain ruggedness index*), PIB per capita e indicador de país africano. Demonstra um exemplo real de interação estatística: a rugosidade reduz o PIB no mundo, mas aumenta na África (por dificultar o comércio de escravos).

#### Variáveis principais
`isocode`, `country`, `rugged`, `rgdppc_2000`, `cont_africa`, além de dezenas de covariáveis de geografia, história colonial e economia.

#### Contexto no livro
Capítulos sobre interações estatísticas em modelos lineares.

**Capítulos:** cap-08, cap-09

#### Uso analítico
Regressão linear com termos de interação; análise causal de efeitos heterogêneos.

---

### salamanders

- **Arquivo:** `salamanders.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/salamanders.csv`
- **Tamanho:** 603 bytes

#### Descrição
Dados de abundância de salamandras por sítio, em função de cobertura florestal e idade da floresta.

#### Variáveis principais
`SITE`, `SALAMAN`, `PCTCOVER`, `FORESTAGE`

#### Contexto no livro
Capítulos sobre modelos de contagem (Poisson) com covariáveis ecológicas.

**Capítulos:** cap-11

#### Uso analítico
Regressão de Poisson; relação entre cobertura florestal e abundância de anfíbios.

---

### tulips

- **Arquivo:** `tulips.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/tulips.csv`
- **Tamanho:** 358 bytes

#### Descrição
Dados experimentais do florescimento de tulipas em canteiros com diferentes combinações de irrigação e sombreamento.

#### Variáveis principais
`bed`, `water`, `shade`, `blooms`

#### Contexto no livro
Capítulos sobre interações estatísticas em modelos lineares.

**Capítulos:** cap-08

#### Uso analítico
Regressão linear com interação `water × shade`; exemplo didático de interação sinérgica.

---

### willowtitn

- **Arquivo:** `willowtitn.csv`
- **Formato:** CSV (`;`)
- **Localização:** `mcelreath-2019-data/willowtitn.csv`
- **Tamanho:** 10 KB

#### Descrição
Dados de presença/ausência e abundância de paro-de-salgueiro (*Parus montanus*) em sítios de altitude variável com diferentes coberturas florestais.

#### Variáveis principais
`i` (sítio), `n` (contagem de indivíduos), `elev`, `percforest`

#### Contexto no livro
Capítulos sobre modelos de ocupação e modelos mistos de contagem.

**Capítulos:** (não encontrado nos capítulos em Markdown)

#### Uso analítico
Modelos binomiais de ocupação; Poisson com variação por sítio.

---

## Inconsistências detectadas

### Datasets não encontrados por nome nos capítulos em Markdown (cap-01 a cap-17)
Os seguintes datasets não foram encontrados por busca textual nos 17 capítulos disponíveis em `mcelreath-2019-capitulos-md-eng/`. Podem ser mencionados com variações de nome, em exercícios finais não incluídos na conversão para Markdown, ou em seções apêndice não convertidas:

`AMTL`, `AMTL_short`, `Achehunting`, `Crofoot`, `Dinosaurs`, `Dissertations`, `Fieldgoals`, `Hoogland`, `Howell2`, `Monks`, `Primates301_distance_matrix`, `Primates301_vcov_matrix`, `PrussianHorses`, `Rinder`, `UCBadmit_long`, `UFClefties`, `Wines2012`, `Wolfdice`, `galapagos`, `islands`, `metal_bands`, `willowtitn`, `Lynx_Hare_dep`

**Nota:** `NWOGrants` foi localizado por referência de figura no cap-15 e atualizado acima. `KosterLeckie` consta em cap-14 por verificação direta.

### Arquivos auxiliares
- `homeworkch3.R` é um script R, não um arquivo de dados. Está no diretório de dados por conter vetores de dados para exercícios.
- Arquivos `.rda` de modelos ajustados (`Boxes_model*.rda`, `Lynx_Hare_dep.rda`, `Lynx_Hare_model.rda`) são resultados de análises, não datasets originais.
