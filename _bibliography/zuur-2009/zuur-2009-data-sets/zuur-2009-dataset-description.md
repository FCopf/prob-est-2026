# Datasets — Mixed Effects Models and Extensions in Ecology with R

**Autor:** Alain F. Zuur et al.
**Ano:** 2009
**Diretório de dados:** `zuur-2009-data-sets/`
**PDF:** `zuur-2009.pdf`
**Capítulos disponíveis:** Cap. 1–23 (em `zuur-2009-capitulos-md-eng/`)

---

## Visão geral

Os datasets de *Mixed Effects Models and Extensions in Ecology with R* (Zuur et al., 2009) são todos oriundos de estudos ecológicos reais, abrangendo aves, mamíferos, peixes, invertebrados, répteis e vegetação em contextos marinhos, terrestres e de água doce. O livro usa esses dados para demonstrar os principais modelos de efeitos mistos e extensões (GLMMs, GEEs, GAMMs, modelos de séries temporais). Todos os 34 arquivos estão em formato texto delimitado por tabulação (`.txt`). Os 23 capítulos do livro estão disponíveis em `zuur-2009-capitulos-md-eng/`. As indicações de capítulo abaixo foram verificadas por busca textual nesses arquivos.

---

## Lista de datasets

### Antarcticbirds

- **Arquivo:** `Antarcticbirds.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Antarcticbirds.txt`
- **Tamanho:** 2,2 KB

#### Descrição
Dados de fenologia de aves marinhas antárticas (datas de chegada e postura em três colônias: AP, CP, EP), com índices climáticos (SOI — Southern Oscillation Index, cobertura de gelo marinho).

#### Variáveis principais
`Year`, `ArrivalAP`, `LayingAP`, `ArrivalCP`, `LayingCP`, `ArrivalEP`, `LayingEP`, `MSA`, `SOI`

#### Contexto no livro
Capítulos sobre séries temporais e modelos de efeitos mistos com covariáveis climáticas.

**Capítulos:** cap-14

#### Uso analítico
Regressão linear mista (LMM); análise de tendências temporais e efeito do ENSO (SOI) sobre fenologia reprodutiva.

---

### BadgersFarmSurveys / BadgersFarmSurveysNoNA

- **Arquivos:** `BadgersFarmSurveys.txt`, `BadgersFarmSurveysNoNA.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/`
- **Tamanhos:** 18 KB / 14 KB

#### Descrição
Dados de inspeções em fazendas britânicas para estudar o comportamento de texugos europeus (*Meles meles*) e risco de transmissão de tuberculose bovina. Inclui sinais de atividade de texugos, disponibilidade de alimento e características das fazendas. A versão `NoNA` remove linhas com dados faltantes.

#### Variáveis principais
`Year`, `Season`, `farm_code_numeric`, `Survey`, `Signs_in_yard`, `No_latrines`, `No_setts_in_fields`, `No_buildings`, `No_cattle_in_buidlings_yard`, `Accessible_feed_store_present`, `Grass_silage`, `Cereal_grains` (e outras covariáveis de alimento e estrutura)

#### Contexto no livro
Capítulo central sobre GLMMs em dados de contagem com variação temporal e entre fazendas.

**Capítulos:** cap-22

#### Uso analítico
GLMM (Poisson/binomial) com efeitos aleatórios por fazenda; análise de painel; variação temporal e sazonal.

---

### Bees

- **Arquivo:** `Bees.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Bees.txt`
- **Tamanho:** 2,3 KB

#### Descrição
Dados de contagem de abelhas por colmeia e presença de infecções, com informações sobre tamanho da colmeia e coordenadas espaciais dos apiários.

#### Variáveis principais
`Rawdata`, `Spobee`, `Hive`, `X`, `Y`, `Infection`, `BeesN`

#### Contexto no livro
Capítulos sobre modelos de contagem com overdispersion e dados de proporção.

**Capítulos:** cap-19

#### Uso analítico
GLMM com distribuição binomial ou Poisson; análise de clustering espacial.

---

### Biodiversity

- **Arquivo:** `Biodiversity.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Biodiversity.txt`
- **Tamanho:** 3,1 KB

#### Descrição
Dados de experimento controlado com mesocosmos marinhos, testando o efeito de tratamentos (presença/ausência de algas) e concentrações de nutrientes sobre abundância e biomassa de invertebrados bentônicos.

#### Variáveis principais
`MU`, `Mesocosm`, `Abundance`, `Biomass`, `Treatment`, `Nutrient`, `Concentration`

#### Contexto no livro
Capítulos sobre delineamento de experimentos e modelos mistos com dados aninhados (mesocosmos dentro de unidades).

**Capítulos:** cap-04

#### Uso analítico
LMM / GLMM com estrutura aninhada; análise de efeitos de tratamento em biodiversidade experimental.

---

### Boar

- **Arquivo:** `Boar.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Boar.txt`
- **Tamanho:** 7,5 KB

#### Descrição
Dados de javalins (*Sus scrofa*) com presença/ausência de tuberculose bovina (*Mycobacterium bovis*), sexo, classe etária e comprimento corporal.

#### Variáveis principais
`Tb` (tuberculose, binária), `SEX`, `AgeClass`, `LengthCT`

#### Contexto no livro
Capítulos sobre modelos logísticos mistos (GLMM binomial) para dados de saúde de vida selvagem.

**Capítulos:** cap-10

#### Uso analítico
Regressão logística; GLMM binomial; análise de fatores de risco para tuberculose em javalis.

---

### Boreality

- **Arquivo:** `Boreality.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Boreality.txt`
- **Tamanho:** 38 KB

#### Descrição
Dados de presença/ausência de *Oxalis acetosella* (azedinha) e fração de vegetação boreal em pontos georeferenciados. Inclui índices de satélite (NDVI), temperatura e umidade do solo.

#### Variáveis principais
`point`, `x`, `y`, `Oxalis`, `boreal`, `nBor`, `nTot`, `Grn`, `NDVI`, `T61`, `Wet`

#### Contexto no livro
Capítulos sobre distribuição de espécies, autocorrelação espacial e GAMMs.

**Capítulos:** cap-07

#### Uso analítico
GLMM / GAMM com estrutura espacial; modelagem de distribuição de espécies (SDM).

---

### Cetaceans

- **Arquivo:** `Cetaceans.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Cetaceans.txt`
- **Tamanho:** 8 KB

#### Descrição
Dados de níveis de contaminantes (corantes histológicos como indicadores de exposição química) em golfinhos (*Delphinus delphis*) e outros cetáceos, por nível de espécie, localidade, sexo e idade.

#### Variáveis principais
`DolphinID`, `Species`, `Age`, `Sex`, `Stain`, `Location`

#### Contexto no livro
Capítulos sobre modelos mistos com efeitos aleatórios por indivíduo.

**Capítulos:** cap-20

#### Uso analítico
LMM com efeitos aleatórios por indivíduo (medidas repetidas); análise de contaminação por espécie e localidade.

---

### Clams

- **Arquivo:** `Clams.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Clams.txt`
- **Tamanho:** 13 KB

#### Descrição
Dados de biomassa (cinzas livres de gordura, AFD) e comprimento de mariscos por mês de coleta. Inclui transformações logarítmicas.

#### Variáveis principais
`MONTH`, `LENGTH`, `AFD`, `LNLENGTH`, `LNAFD`

#### Contexto no livro
Capítulos sobre regressão linear com transformações e verificação de premissas.

**Capítulos:** cap-02

#### Uso analítico
Regressão linear; análise de alometria comprimento–biomassa.

---

### DeerEcervi

- **Arquivo:** `DeerEcervi.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/DeerEcervi.txt`
- **Tamanho:** 12 KB

#### Descrição
Dados de cervos (*Cervus elaphus*) de fazendas espanholas, com presença/ausência do nematódeo *Elaphostrongylus cervi* em função de comprimento corporal, sexo e fazenda.

#### Variáveis principais
`Farm`, `Sex`, `Length`, `Ecervi` (presença de parasita)

#### Contexto no livro
Capítulos sobre GLMM binomial para dados de parasitologia com estrutura hierárquica (animais dentro de fazendas).

**Capítulos:** cap-12, cap-13

#### Uso analítico
GLMM logístico com efeitos aleatórios por fazenda; análise de fatores de risco parasitário.

---

### Hawaii

- **Arquivo:** `Hawaii.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Hawaii.txt`
- **Tamanho:** 1,5 KB

#### Descrição
Contagens anuais de aves aquáticas endêmicas do Havaí (Stilt, Coot, Moorhen) em ilhas de Oahu, Maui e Kauai, com precipitação anual.

#### Variáveis principais
`Year`, `Stilt.Oahu`, `Stilt.Maui`, `Coot.Oahu`, `Coot.Maui`, `Moorhen.Kauai`, `Rainfall`

#### Contexto no livro
Capítulos sobre análise de séries temporais e modelos lineares para dados de monitoramento de aves.

**Capítulos:** cap-06, cap-07, cap-14, cap-17

#### Uso analítico
LMM / GLS com autocorrelação temporal; efeito de precipitação sobre a abundância de aves.

---

### ISIT

- **Arquivo:** `ISIT.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/ISIT.txt`
- **Tamanho:** 57 KB

#### Descrição
Dados de bioluminescência no oceano profundo: fontes de luz biológica (*Sources*) por amostras de profundidade e estações de coleta no Atlântico Norte. Dataset central no livro.

#### Variáveis principais
`SampleDepth`, `Sources`, `Station`, `Time`, `Latitude`, `Longitude`, `Xkm`, `Ykm`, `Month`, `Year`, `BottomDepth`, `Season`, `Discovery`, `RelativeDepth`

#### Contexto no livro
Capítulos iniciais sobre exploração de dados, regressão linear mista e GAMMs. Um dos datasets mais usados ao longo do livro.

**Capítulos:** cap-02, cap-03, cap-17

#### Uso analítico
LMM com efeitos aleatórios por estação; GAMM com suavizadores de profundidade; análise de padrões espaciais e temporais de bioluminescência.

---

### Koalas

- **Arquivo:** `Koalas.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Koalas.txt`
- **Tamanho:** 37 KB

#### Descrição
Dados de presença/ausência de coalas (*Phascolarctos cinereus*) em pontos georeferenciados, com covariáveis de habitat (vegetação, distâncias, densidade de rodovias) em diferentes raios espaciais.

#### Variáveis principais
`site`, `subsite`, `easting`, `northing`, `presence`, `pprim_ssite`, `phss_5km`, `pm_5km`, `pdens_5km`, `edens_5km`, `rdens_5km` (e versões em 2,5 km e 1 km)

#### Contexto no livro
Capítulos sobre modelos de distribuição de espécies (SDM) com variáveis espacialmente explícitas.

**Capítulos:** cap-21

#### Uso analítico
GLMM / GAM logístico para modelagem de habitat de koalas; análise de escala espacial de covariáveis.

---

### Lice

- **Arquivo:** `Lice.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Lice.txt`
- **Tamanho:** 25 KB

#### Descrição
Dados de abundância de copépodos parasitas (*Caligus* spp., piolhos de peixe) e náuplios em amostras de coluna d'água. Inclui volume e produção por estação, profundidade e data.

#### Variáveis principais
`Copepod`, `Nauplii`, `Volume`, `Station`, `Depth`, `Production_day`, `Production_week`, `Day`, `Month`, `Year`, `Substitute_vol`

#### Contexto no livro
Capítulos sobre modelos de contagem e dados de zooplâncton com estrutura hierárquica.

**Capítulos:** cap-09

#### Uso analítico
GLMM de Poisson com efeitos aleatórios por estação; análise de variação temporal e espacial.

---

### Limosa

- **Arquivo:** `Limosa.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Limosa.txt`
- **Tamanho:** 8,2 KB

#### Descrição
Dados de comportamento alimentar da maçarico-de-bico-direito (*Limosa lapponica*), com medidas repetidas de taxa de ingestão em função de mês, horário, idade, sexo e plumagem nupcial.

#### Variáveis principais
`RECORD`, `ID`, `Month`, `Time`, `AGE`, `Sex`, `Bplumage`, `Period`, `IntakeRate`

#### Contexto no livro
Capítulos sobre modelos mistos com medidas repetidas e variação individual.

**Capítulos:** cap-07, cap-15

#### Uso analítico
LMM com efeitos aleatórios por indivíduo; análise de fatores que afetam a taxa de forrageamento.

---

### Loyn

- **Arquivo:** `Loyn.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Loyn.txt`
- **Tamanho:** 1,8 KB

#### Descrição
Dados clássicos de fragmentação florestal e abundância de aves em fragmentos de floresta de Victoria (Austrália). Dataset histórico de Loyn (1987).

#### Variáveis principais
`Site`, `ABUND` (abundância de aves), `AREA` (área do fragmento), `DIST` (distância ao fragmento mais próximo), `LDIST` (distância ao fragmento maior mais próximo), `YR.ISOL` (ano de isolamento), `GRAZE` (intensidade de pastejo), `ALT`

#### Contexto no livro
Capítulos introdutórios de regressão linear múltipla e análise exploratória de dados. O dataset aparece mencionado pelo nome do autor (Loyn, 1987) no índice do livro (p. 531), mas não foi localizado pelo nome do arquivo nos capítulos em Markdown. O livro usa o conjunto de dados de fragmentação florestal de Victoria (Austrália) como exemplo em regressão múltipla.

**Capítulos:** (não localizado por nome do dataset nos capítulos em Markdown)

#### Uso analítico
Regressão linear múltipla; análise de fragmentação florestal; seleção de variáveis.

---

### Nereis

- **Arquivo:** `Nereis.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Nereis.txt`
- **Tamanho:** 557 bytes

#### Descrição
Dados de concentração de nutrientes e biomassa de poliquetas (*Nereis* spp.) em sedimentos marinhos, com tipo de nutriente.

#### Variáveis principais
`concentration`, `biomass`, `nutrient`

#### Contexto no livro
Capítulos sobre modelos lineares simples e diagnóstico de resíduos.

**Capítulos:** cap-02

#### Uso analítico
Regressão linear; análise de relação concentração de nutrientes – biomassa.

---

### Owls

- **Arquivo:** `Owls.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Owls.txt`
- **Tamanho:** 23 KB

#### Descrição
Dados de comportamento de mendicância de filhotes de coruja-do-celeiro (*Tyto alba*): número de vocalizações de negociação de alimento por filhotes em diferentes ninhos, em função do tratamento alimentar dos pais (saciado vs. privado) e do sexo do progenitor que retorna.

#### Variáveis principais
`Nest`, `FoodTreatment`, `SexParent`, `ArrivalTime`, `SiblingNegotiation` (contagem de vocalizações), `BroodSize`, `NegPerChick`

#### Contexto no livro
Capítulos sobre GLMM com dados de contagem e overdispersion (efeitos aleatórios por ninho).

**Capítulos:** cap-05, cap-06, cap-12, cap-13

#### Uso analítico
GLMM de Poisson com efeitos aleatórios por ninho; análise de Zero-Inflation; comparação de tratamentos alimentares.

---

### ParasiteCod

- **Arquivo:** `ParasiteCod.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/ParasiteCod.txt`
- **Tamanho:** 42 KB

#### Descrição
Dados de prevalência e intensidade de parasitas em bacalhaus (*Gadus morhua*) pescados em diferentes anos, profundidades e áreas do Mar de Barents.

#### Variáveis principais
`Sample`, `Intensity`, `Prevalence`, `Year`, `Depth`, `Weight`, `Length`, `Sex`, `Stage`, `Age`, `Area`

#### Contexto no livro
Capítulos sobre GLMM binomial (prevalência) e modelos de contagem (intensidade); análise de fatores de infestação parasitária.

**Capítulos:** cap-10, cap-11

#### Uso analítico
GLMM logístico para prevalência; GLMM Poisson/NBin para intensidade; efeitos aleatórios por área e ano.

---

### RIKZ

- **Arquivo:** `RIKZ.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/RIKZ.txt`
- **Tamanho:** 808 bytes

#### Descrição
Dados de riqueza de espécies bentônicas em praias holandesas do Mar do Norte, coletados pelo instituto RIKZ. Cada ponto amostral tem riqueza de espécies, exposição ao ondas e NAP (nível em relação à maré).

#### Variáveis principais
`Sample`, `Richness`, `Exposure`, `NAP`, `Beach`

#### Contexto no livro
Exemplo central e recorrente em todo o livro para demonstrar LMMs com efeitos aleatórios aninhados (amostras dentro de praias).

**Capítulos:** cap-02, cap-05, cap-13, cap-18

#### Uso analítico
LMM com efeitos aleatórios por praia; análise de influência de NAP sobre riqueza bentônica; um dos datasets mais usados no livro.

---

### RIKZDATAEnv

- **Arquivo:** `RIKZDATAEnv.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/RIKZDATAEnv.txt`
- **Tamanho:** 1,2 MB (maior arquivo do livro)

#### Descrição
Dataset ambiental expandido do RIKZ: séries temporais de variáveis oceanográficas e de qualidade da água (nutrientes inorgânicos dissolvidos, salinidade, temperatura, transparência, clorofila) em estações costeiras holandesas desde 1990.

#### Variáveis principais
`Sample`, `Date`, `DateNr`, `Station`, `Area`, `Year`, `Month`, `Season`, `DIN`, `DIP`, `SIL`, `TN`, `TP`, `SAL`, `T`, `ZICHT`, `ZS`, `CHLFa`

#### Contexto no livro
Capítulos sobre séries temporais e modelos com autocorrelação temporal; análise de tendências de eutrofização costeira.

**Capítulos:** cap-18

#### Uso analítico
GLS / LMM com estrutura de autocorrelação; análise de variação sazonal e anual de nutrientes costeiros.

---

### RiceFieldBirds

- **Arquivo:** `RiceFieldBirds.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/RiceFieldBirds.txt`
- **Tamanho:** 22 KB

#### Descrição
Dados de abundância de mais de 50 espécies de aves aquáticas em campos de arroz do Vale Central da Califórnia. Inclui variáveis de manejo do campo (tratamento, profundidade da água) e agrupamentos de espécies.

#### Variáveis principais
`Time`, `YEAR`, `SITE`, `FIELD`, `AREA`, `SPTREAT`, `DEPTH`, e colunas de abundância para ~50 espécies, além de agregados `WATERFWL`, `LLWADERS`, `SHOREBDS`, `AQBIRDS`

#### Contexto no livro
Capítulos sobre análise multivariada e abundância de comunidades de aves.

**Capítulos:** cap-12

#### Uso analítico
GLMM para múltiplas espécies; análise de efeito de profundidade e manejo sobre comunidades de aves aquáticas.

---

### RoadKills

- **Arquivo:** `RoadKills.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/RoadKills.txt`
- **Tamanho:** 7,4 KB

#### Descrição
Dados de atropelamentos de anfíbios (*Bufo calamita* e total) em trechos de estradas de Portugal, com covariáveis de uso do solo e características da estrada.

#### Variáveis principais
`Sector`, `X`, `Y`, `BufoCalamita`, `TOT.N`, `S.RICH`, `OPEN.L`, `OLIVE`, `MONT.S`, `MONT`, `POLIC`, `SHRUB`, `URBAN`, `WAT.RES`, `L.WAT.C`, `L.D.ROAD`, `L.P.ROAD`, `D.WAT.RES`, `N.PATCH`, `P.EDGE`, `L.SDI`

#### Contexto no livro
Capítulos sobre modelos de Poisson com overdispersion e autocorrelação espacial.

**Capítulos:** cap-09, cap-16

#### Uso analítico
GLMM / GLM de Poisson/binomial negativa; análise espacial de atropelamentos em função de uso do solo.

---

### SDI2003

- **Arquivo:** `SDI2003.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/SDI2003.txt`
- **Tamanho:** 16 KB

#### Descrição
Dados de qualidade da água de rios irlandeses em 2003: pH, temperatura e índice de diatomáceas (SDI — Shannon Diatom Index) em função de características do sítio e cobertura florestal.

#### Variáveis principais
`ID`, `Rivername`, `Easting`, `Northing`, `Altitude`, `Forested`, `Date`, `FieldpH`, `pH`, `Temperature`, `SDI`

#### Contexto no livro
Capítulos sobre modelos lineares e GLS para dados de qualidade de água.

**Capítulos:** cap-07

#### Uso analítico
Regressão linear / GLS; análise de efeito da cobertura florestal e altitude sobre pH e qualidade da água.

---

### Seals / countsBK1

- **Arquivos:** `Seals.txt`, `countsBK1.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/`
- **Tamanhos:** 3,8 KB / 3,8 KB (idênticos)

#### Descrição
Contagens de focas (*Halichoerus grypus* ou *Phoca vitulina*) em sítios de descansa ao longo de semanas, meses e anos. Inclui variáveis meteorológicas (direção e velocidade do vento, tempo).

#### Variáveis principais
`Abun`, `Site`, `Month`, `Year`, `Week`, `WeekTime`, `Timeofday`, `Winddir`, `Windspeed`, `Weather`

#### Contexto no livro
Capítulos sobre modelos de contagem com efeitos aleatórios de sítio e covariáveis temporais e meteorológicas.

**Capítulos:** cap-01, cap-23

#### Uso analítico
GLMM de Poisson; análise de variação temporal e efeitos climáticos sobre contagem de focas.

#### Observações
`countsBK1.txt` é idêntico a `Seals.txt` em estrutura e conteúdo — provavelmente trata-se de um alias ou cópia do mesmo dataset.

---

### Snakes

- **Arquivo:** `Snakes.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Snakes.txt`
- **Tamanho:** 8,1 KB

#### Descrição
Dados de atropelamentos de serpentes em estradas de Portugal, com espécie, localização, mês, estação, dias de chuva, pluviosidade acumulada e temperatura média.

#### Variáveis principais
`ID`, `Road`, `Month`, `Season`, `N_days`, `Species`, `Road_Loc`, `Size_cm`, `PDayRain`, `Tot_Rain`, `Temp_avg`

#### Contexto no livro
Capítulos sobre GLMM para dados de ocorrência de espécies e efeitos climáticos.

**Capítulos:** cap-11

#### Uso analítico
GLMM binomial / Poisson; análise de fatores que afetam atropelamentos de répteis.

---

### Sparrows

- **Arquivo:** `Sparrows.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Sparrows.txt`
- **Tamanho:** 53 KB

#### Descrição
Dados morfométricos de passeriformes (possivelmente *Passer* spp. ou *Melospiza* spp.) com medidas de morfologia (asa, tarso, crânio, culmen), peso, sexo, idade e observador.

#### Variáveis principais
`Speciescode`, `Sex`, `SexNew`, `wingcrd`, `flatwing`, `tarsus`, `head`, `culmen`, `nalospi`, `wt`, `observer`, `Age`

#### Contexto no livro
Capítulos sobre análise exploratória, detecção de outliers e GLS com variáveis categóricas.

**Capítulos:** cap-08

#### Uso analítico
LMM / GLS; análise de variação morfométrica por sexo, idade e observador.

---

### Squid / squidmales

- **Arquivos:** `Squid.txt`, `squidmales.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/`
- **Tamanhos:** 18 KB / 18 KB (idênticos)

#### Descrição
Dados morfológicos de lulas (*Loligo* spp.): ano, mês, comprimento do manto (DML) e peso do testículo. Estudam relação entre tamanho e maturação sexual.

#### Variáveis principais
`Specimen`, `YEAR`, `MONTH`, `DML` (dorsal mantle length), `Testisweight`

#### Contexto no livro
Capítulos sobre modelos mistos com medidas repetidas e variação sazonal.

**Capítulos:** cap-04

#### Uso analítico
LMM / GLS com efeitos de mês e ano; análise alométrica de maturação em cefalópodes.

#### Observações
`squidmales.txt` é idêntico a `Squid.txt` em estrutura e conteúdo — provavelmente um subconjunto de machos ou alias do mesmo dataset.

---

### Tbdeer

- **Arquivo:** `Tbdeer.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Tbdeer.txt`
- **Tamanho:** 2,4 KB

#### Descrição
Dados de fazendas espanholas com testes de tuberculose bovina em javalis e veados, junto com dados de uso da terra (campos abertos, matagal, plantações de pinheiro, carvalhos) e índices de densidade de javalis e veados.

#### Variáveis principais
`Farm`, `BoarPosTB`, `BoarSampledTB`, `DeerPosTB`, `DeerSampledTB`, `DeerPosCervi`, `OpenLand`, `ScrubLand`, `PinePlantation`, `QuercusPlants`, `QuercusTrees`, `WildBoarIndex`, `ReedDeerIndex`, `EstateSize`, `Fenced`

#### Contexto no livro
Capítulos sobre GLMM binomial para análise de prevalência de tuberculose em fauna silvestre.

**Capítulos:** cap-10

#### Uso analítico
Regressão logística mista; análise de covariáveis de uso do solo sobre tuberculose em javalis e veados.

---

### TeethNitrogen

- **Arquivo:** `TeethNitrogen.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/TeethNitrogen.txt`
- **Tamanho:** 6,7 KB

#### Descrição
Dados de isótopos de nitrogênio (δ¹⁵N) em camadas de dentina de dentes de mamíferos marinhos, refletindo a dieta ao longo da vida do animal. Inclui a idade estimada da camada e o dente de origem.

#### Variáveis principais
`15N`, `Age`, `Tooth`

#### Contexto no livro
Capítulos sobre modelos mistos com medidas repetidas ao longo do desenvolvimento (dados de crescimento).

**Capítulos:** cap-02, cap-07

#### Uso analítico
LMM com efeitos aleatórios por dente/indivíduo; análise de variação ontogenética em isótopos estáveis.

---

### Vegetation

- **Arquivo:** `Vegetation.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Vegetation.txt`
- **Tamanho:** 3,2 KB

#### Descrição
Dados de riqueza de espécies vegetais em transectos monitorados ao longo do tempo, com covariáveis de composição do substrato (rocha, serrapilheira, solo nu) e fatores climáticos (precipitação de outono, temperatura máxima de primavera).

#### Variáveis principais
`SAMPLEYR`, `Time`, `Transect`, `Richness`, `ROCK`, `LITTER`, `BARESOIL`, `FallPrec`, `SprTmax`

#### Contexto no livro
Capítulos sobre modelos mistos longitudinais para dados de monitoramento de longo prazo.

**Capítulos:** cap-03

#### Uso analítico
LMM com efeitos aleatórios por transecto; análise de tendências temporais em riqueza de plantas.

---

### Ythan

- **Arquivo:** `Ythan.txt`
- **Formato:** TXT (TAB)
- **Localização:** `zuur-2009-data/Ythan.txt`
- **Tamanho:** 3,7 KB

#### Descrição
Série temporal de abundância de aves limícolas e agrícolas no estuário Ythan (Escócia), com dados de uso agrícola do solo e nitrato no estuário.

#### Variáveis principais
`Year`, `Oystercatcher`, `Turnstone`, `Curlew`, `BartailedGodwit`, `Redshank`, `Knot`, `Dunlin`, `wheat`, `rape`, `barley`, `oats`, `cattle`, `sheep`, `pigs`, `nitrate`

#### Contexto no livro
Capítulos sobre análise de séries temporais multivariadas e efeitos de agricultura sobre aves aquáticas.

**Capítulos:** cap-04, cap-15

#### Uso analítico
LMM / GLS com estrutura de correlação temporal; análise de impacto agrícola sobre aves limícolas.

---

## Inconsistências detectadas

### Datasets duplicados (estrutura e conteúdo idênticos)
Foram encontrados dois pares de arquivos com estrutura e conteúdo aparentemente idênticos:

| Par | Arquivos |
|-----|----------|
| Focas | `Seals.txt` e `countsBK1.txt` |
| Lulas | `Squid.txt` e `squidmales.txt` |

Provavelmente `countsBK1.txt` é um alias ou subconjunto de `Seals.txt`, e `squidmales.txt` é subconjunto de machos de `Squid.txt`. Recomenda-se confirmar no PDF.