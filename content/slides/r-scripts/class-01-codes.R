################################################################################
# AULA 1: CONTRASTANDO HIPÓTESES - Script da apresentação
################################################################################

# PREPARAÇÃO: Carregar dados
# Escolha UMA das opções abaixo

# Opção 1: CSV
# dados <- read.csv("dados-turma.csv")
# mental <- dados$Mental
# fisico <- dados$Fisico

# Opção 2: Colar dados diretamente
# mental <- c(...)  
# fisico <- c(...)

# Opção 3: Dados de backup
# source("dados-backup.R")
# mental <- mental_backup
# fisico <- fisico_backup

n_mental <- length(mental)
n_fisico <- length(fisico)

################################################################################
# PARTE 3: SIMULAÇÕES SOB H₁
################################################################################

set.seed(42)
n <- 50

par(mfrow = c(2, 3), mar = c(3, 4, 3, 1))

for (i in 1:5) {
  amostra <- sample(1:6, n, replace = TRUE)
  props <- table(factor(amostra, levels = 1:6)) / n
  barplot(props, col = "grey80", main = paste("Turma simulada", i),
          ylim = c(0, 0.35), xlab = "Face", ylab = "Proporção", names.arg = 1:6)
  abline(h = 1/6, lty = 2, col = "red", lwd = 2)
}

barplot(rep(1/6, 6), names.arg = 1:6, col = "pink", border = "red",
        main = "Modelo Teórico (H₁)", ylim = c(0, 0.35), 
        xlab = "Face", ylab = "Proporção")
abline(h = 1/6, lty = 2, col = "red", lwd = 2)

################################################################################
# PARTE 4: REVELAÇÃO DOS DADOS
################################################################################

freq_mental <- table(factor(mental, levels = 1:6))
freq_fisico <- table(factor(fisico, levels = 1:6))

prop_mental <- freq_mental / n_mental
prop_fisico <- freq_fisico / n_fisico

# Resumo
freq_mental
prop_mental
freq_fisico
prop_fisico

# Gráficos lado a lado
par(mfrow = c(1, 2), mar = c(4, 4, 3, 1))

barplot(prop_fisico, col = "seagreen", main = "Dado Físico",
        xlab = "Face", ylab = "Proporção", ylim = c(0, 0.35), names.arg = 1:6)
abline(h = 1/6, lty = 2, col = "red", lwd = 2)

barplot(prop_mental, col = "steelblue", main = "Dado Mental",
        xlab = "Face", ylab = "Proporção", ylim = c(0, 0.35), names.arg = 1:6)
abline(h = 1/6, lty = 2, col = "red", lwd = 2)

################################################################################
# PARTE 5: VEROSSIMILHANÇA
################################################################################

p_h1 <- rep(1/6, 6)
p_h2 <- c(1, 2, 4, 4, 2, 1) / 14

# Log-verossimilhanças
loglik_H1_fisico <- sum(freq_fisico * log(p_h1))
loglik_H2_fisico <- sum(freq_fisico * log(p_h2))
loglik_H1_mental <- sum(freq_mental * log(p_h1))
loglik_H2_mental <- sum(freq_mental * log(p_h2))

# Mostrar resultados
loglik_H1_mental
loglik_H2_mental
loglik_H1_fisico
loglik_H2_fisico

# Razões de verossimilhanças
diff_mental <- loglik_H2_mental - loglik_H1_mental
diff_fisico <- loglik_H2_fisico - loglik_H1_fisico

razao_mental <- exp(diff_mental)
razao_fisico <- exp(diff_fisico)

razao_mental
razao_fisico

################################################################################
# PARTE 6: SIMULAÇÃO SOB H₂
################################################################################

n_sim <- 1000

sim_H2 <- replicate(n_sim, {
  amostra <- sample(1:6, n_mental, replace = TRUE, prob = p_h2)
  table(factor(amostra, levels = 1:6)) / n_mental
})

par(mfrow = c(2, 3), mar = c(3, 4, 3, 1))

for (i in 1:5) {
  barplot(sim_H2[, i], main = paste("Simulação H₂ -", i),
          ylim = c(0, 0.35), col = "salmon", xlab = "Face", 
          ylab = "Proporção", names.arg = 1:6)
  abline(h = 1/6, lty = 2, col = "red", lwd = 1)
}

barplot(prop_mental, main = "Dado Mental (Observado)",
        ylim = c(0, 0.35), col = "steelblue", xlab = "Face", 
        ylab = "Proporção", names.arg = 1:6)
abline(h = 1/6, lty = 2, col = "red", lwd = 1)

################################################################################
# PARTE 7: ATUALIZAÇÃO BAYESIANA
################################################################################

# ⚠️ IMPORTANTE: Substituir pelos valores REAIS da votação
n_turma <- 50
votos_H1 <- 32  # Ajustar!
votos_H2 <- 18  # Ajustar!

prior <- c(H1 = votos_H1 / n_turma, H2 = votos_H2 / n_turma)

# Verossimilhanças
lik_mental <- c(H1 = exp(loglik_H1_mental), H2 = exp(loglik_H2_mental))
lik_fisico <- c(H1 = exp(loglik_H1_fisico), H2 = exp(loglik_H2_fisico))

# Posterioris
post_mental <- prior * lik_mental
post_mental <- post_mental / sum(post_mental)

post_fisico <- prior * lik_fisico
post_fisico <- post_fisico / sum(post_fisico)

# Resultados
prior
post_mental
post_fisico

# Gráficos
par(mfrow = c(1, 3), mar = c(4, 4, 3, 1))

barplot(prior, col = c("grey70", "salmon"), main = "Priori\n(votação da turma)",
        ylab = "Probabilidade", ylim = c(0, 1), names.arg = c("H₁", "H₂"))

barplot(post_fisico, col = c("grey70", "salmon"), main = "Posteriori\nDado Físico",
        ylab = "P(H|dados)", ylim = c(0, 1), names.arg = c("H₁", "H₂"))

barplot(post_mental, col = c("grey70", "salmon"), main = "Posteriori\nDado Mental",
        ylab = "P(H|dados)", ylim = c(0, 1), names.arg = c("H₁", "H₂"))

################################################################################
# RESUMO
################################################################################

# Dados
n_mental
n_fisico

# Verossimilhanças
razao_mental
razao_fisico

# Bayesiano
prior
post_mental
post_fisico