# Datasets — Ecological Models and Data in R

**Autor:** Benjamin M. Bolker
**Ano:** 2007
**Diretório de dados:** `bolker-2007-data-sets/`
**PDF:** `bolker-2007.pdf`
**Capítulos disponíveis:** Cap. 1–12 (em `bolker-2007-capitulos-md-eng/`)

---

## Visão geral

Os datasets de *Ecological Models and Data in R* são empregados para demonstrar o ajuste de modelos estatísticos — modelos não-lineares, funções resposta de predação, sobrevivência e contagem — usando máxima verossimilhança e abordagens bayesianas elementares. Os dados provêm de estudos reais de ecologia de recifes de coral, ecologia de plantas, virologia e biologia de populações.

Os 12 capítulos do livro estão disponíveis em `bolker-2007-capitulos-md-eng/`. As indicações de capítulo abaixo foram verificadas por busca textual nesses arquivos.

---

## Lista de datasets

### DamselRecruitment

- **Arquivo:** `DamselRecruitment.tab`
- **Formato:** TAB (texto com comentários `#`)
- **Localização:** `bolker-2007-data/DamselRecruitment.tab`
- **Tamanho:** 3,5 KB

#### Descrição
Recrutamento e sobrevivência do peixe damisela *Dascyllus trimaculatus* em anêmonas recifais. Coletado em 1997–1998.

#### Variáveis principais
`area` (área da anêmona, cm²), `init` (recrutas iniciais), `surv` (sobreviventes após 195 dias)

#### Contexto no livro
Capítulos sobre dependência de densidade e sobrevivência. Demonstra a relação entre densidade inicial e sobrevivência em recifes de coral.

**Capítulos:** cap-02, cap-05

#### Uso analítico
Modelos de sobrevivência com dependência de densidade; ajuste de curvas de resposta funcional por máxima verossimilhança.

---

### DamselRecruitment_sum

- **Arquivo:** `DamselRecruitment_sum.tab`
- **Formato:** TAB
- **Localização:** `bolker-2007-data/DamselRecruitment_sum.tab`
- **Tamanho:** 447 bytes

#### Descrição
Dados sumarizados de `DamselRecruitment.tab`, com densidades médias e erro padrão.

#### Variáveis principais
`settler.den`, `surv.den`, `SE`

#### Contexto no livro
Visualização e validação gráfica dos modelos de recrutamento.

**Capítulos:** cap-02

#### Uso analítico
Ajuste gráfico de funções de recrutamento; comparação modelo vs. dados sumarizados.

---

### DamselSettlement

- **Arquivo:** `DamselSettlement.tab`
- **Formato:** TAB
- **Localização:** `bolker-2007-data/DamselSettlement.tab`
- **Tamanho:** 9 KB

#### Descrição
Dados longitudinais de assentamento de larvas de damisela em diferentes sítios recifais ao longo de múltiplos pulsos de recrutamento.

#### Variáveis principais
`site`, `pulse`, `obs`, `density`

#### Contexto no livro
Capítulos sobre variação espacial e temporal em recrutamento larval; modelos hierárquicos.

**Capítulos:** cap-02

#### Uso analítico
Modelos mistos com efeitos aleatórios por sítio e pulso temporal.

---

### FirDBHFec

- **Arquivo:** `FirDBHFec.csv`
- **Formato:** CSV (`;`)
- **Localização:** `bolker-2007-data/FirDBHFec.csv`
- **Tamanho:** 52 KB

#### Descrição
Diâmetro à altura do peito (DAP/DBH) e fecundidade (produção de cones) de abetos (*Abies* spp.) em populações com e sem infestação por onda (*wave* vs. *nonwave*). Uma linha por árvore individual.

#### Variáveis principais
`WAVE_NON` (tipo de população), `TREE_NO`, séries temporais de cones (`C1999`–`C1991`) e crescimento (`G1998`–`G1990`), `DBH`, `AGE`, `TOTCONES`

#### Contexto no livro
Capítulos sobre relações tamanho–fecundidade e ajuste de modelos alométricos (potência).

**Capítulos:** cap-06, cap-10

#### Uso analítico
Modelos alométricos (*power law*); regressão não-linear de fecundidade em função do DAP; comparação entre populações.

---

### FirDBHFec_sum

- **Arquivo:** `FirDBHFec_sum.tab`
- **Formato:** TAB
- **Localização:** `bolker-2007-data/FirDBHFec_sum.tab`
- **Tamanho:** 6,3 KB

#### Descrição
Versão sumarizada de `FirDBHFec.csv` com DAP médio e fecundidade total por árvore e por tipo de população.

#### Variáveis principais
`DBH`, `fecundity`, `pop` (nonwave / wave)

#### Contexto no livro
Visualização e ajuste simplificado das relações tamanho–fecundidade.

**Capítulos:** cap-06, cap-10

#### Uso analítico
Regressão alométrica; comparação visual de curvas entre grupos.

---

### GobySurvival

- **Arquivo:** `GobySurvival.csv`
- **Formato:** CSV (`;`)
- **Localização:** `bolker-2007-data/GobySurvival.csv`
- **Tamanho:** 11 KB

#### Descrição
Sobrevivência do góbio de recife (*Elacatinus evelynae*) em experimentos de campo, por sítio, ano, densidade e qualidade do habitat.

#### Variáveis principais
`exper`, `year`, `site`, `head`, `density`, `qual`, `d1`, `d2` (dias de sobrevivência)

#### Contexto no livro
Capítulos sobre análise de sobrevivência e efeitos de densidade em ecologia de recifes.

**Capítulos:** cap-02, cap-07, cap-08

#### Uso analítico
Análise de sobrevivência (Kaplan-Meier, modelos exponencial/Weibull); efeito de densidade e qualidade do patch.

---

### Lily_sum

- **Arquivo:** `Lily_sum.csv`
- **Formato:** CSV (`;`)
- **Localização:** `bolker-2007-data/Lily_sum.csv`
- **Tamanho:** 8,5 KB

#### Descrição
Abundância de lírios (*Lilium* spp.) por parcela de vegetação, com contagens de flores, plântulas e plantas vegetativas em função de características ambientais (rochosidade, umidade) e perturbação por tuco-tucos.

#### Variáveis principais
`x`, `y` (coordenadas), `flowers`, `seedlings`, `vegetative`, `gopher`, `rockiness`, `moisture`

#### Contexto no livro
Capítulos sobre modelos espaciais e análise de dados de contagem em ecologia de plantas.

**Capítulos:** cap-10

#### Uso analítico
Modelos de Poisson/binomial negativa; análise espacial; efeito de herbivoria por roedores.

---

### MyxoTiter_sum

- **Arquivo:** `MyxoTiter_sum.tab`
- **Formato:** TAB (com comentários `##`)
- **Localização:** `bolker-2007-data/MyxoTiter_sum.tab`
- **Tamanho:** 1,7 KB

#### Descrição
Título viral (concentração de patógeno) em coelhos infectados com mixomatose (*Myxoma virus*), por grau de virulência e dia pós-infecção. Dados transcritos de Fenner et al. (1956).

#### Variáveis principais
`grade` (grau de virulência, 1–5), `day`, `titer`

#### Contexto no livro
Capítulos sobre dinâmica de doenças e ajuste de curvas epidemiológicas por máxima verossimilhança.

**Capítulos:** cap-06, cap-07

#### Uso analítico
Ajuste de curvas de dinâmica viral; modelos de crescimento/decaimento por grade de virulência.

#### Observações
Arquivo contém metadados de origem nos comentários iniciais.

---

### ReedfrogFuncresp

- **Arquivo:** `ReedfrogFuncresp.tab`
- **Formato:** TAB
- **Localização:** `bolker-2007-data/ReedfrogFuncresp.tab`
- **Tamanho:** 121 bytes

#### Descrição
Número de presas mortas em função da densidade inicial de presas por girinos predadores de rã-de-junco (*Hyperolius* spp.). Experimento clássico de função resposta Tipo II.

#### Variáveis principais
`Initial` (presas iniciais), `Killed` (presas mortas)

#### Contexto no livro
Capítulos sobre funções resposta de predação. Exemplo central para ajuste da função de Holling Tipo II por máxima verossimilhança binomial.

**Capítulos:** cap-02, cap-06, cap-08, cap-09

#### Uso analítico
Ajuste de função resposta de Holling Tipo II; máxima verossimilhança binomial.

---

### ReedfrogPred

- **Arquivo:** `ReedfrogPred.rda`
- **Formato:** RDA (objeto R serializado)
- **Localização:** `bolker-2007-data/ReedfrogPred.rda`
- **Tamanho:** 631 bytes

#### Descrição
Objeto R com dados de predação de girinos de rã-de-junco em formato binário. Provavelmente dataset expandido de `ReedfrogFuncresp`.

#### Contexto no livro

**Capítulos:** cap-02, cap-06

#### Uso analítico
Modelos de predação e função resposta; exemplos R do livro.

---

### ReedfrogSizepred

- **Arquivo:** `ReedfrogSizepred.tab`
- **Formato:** TAB
- **Localização:** `bolker-2007-data/ReedfrogSizepred.tab`
- **Tamanho:** 96 bytes

#### Descrição
Mortalidade de presas em função do tamanho corporal do predador (*TBL*: comprimento total). Analisa como o tamanho do predador afeta a taxa de predação.

#### Variáveis principais
`TBL` (comprimento total do predador, mm), `Kill`

#### Contexto no livro
Capítulos sobre funções resposta dependentes de tamanho.

**Capítulos:** cap-02, cap-08

#### Uso analítico
Regressão binomial; função resposta dependente do tamanho do predador.

---

### SeedPred

- **Arquivo:** `SeedPred.rda`
- **Formato:** RDA
- **Localização:** `bolker-2007-data/SeedPred.rda`
- **Tamanho:** 9,9 KB (formato longo)

#### Descrição
Dados de predação de sementes: espécie da semente, taxa de remoção, local e demais covariáveis. Formato longo (uma linha por observação).

#### Contexto no livro

**Capítulos:** cap-02, cap-08

#### Uso analítico
Modelos binomiais ou de Poisson de remoção de sementes; análise comparativa entre espécies.

---

### SeedPred_mass

- **Arquivo:** `SeedPred_mass.rda`
- **Formato:** RDA
- **Localização:** `bolker-2007-data/SeedPred_mass.rda`
- **Tamanho:** 179 bytes

#### Descrição
Complemento de `SeedPred.rda` com dados de massa das sementes.

#### Contexto no livro

**Capítulos:** cap-02, cap-08

#### Uso analítico
Análise de efeito da massa da semente sobre a taxa de remoção.

---

### SeedPred_wide

- **Arquivo:** `SeedPred_wide.rda`
- **Formato:** RDA
- **Localização:** `bolker-2007-data/SeedPred_wide.rda`
- **Tamanho:** 5,3 KB (formato largo)

#### Descrição
Mesmo dataset de `SeedPred.rda` em formato largo (colunas por espécie de semente).

#### Contexto no livro

**Capítulos:** cap-02, cap-08

#### Uso analítico
Análises multivariadas e visualização comparativa entre espécies de sementes.
