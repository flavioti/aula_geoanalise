# Matriz - Conjunto de array
# Dataframe - conjunto de matriz

# Exibe a ajuda
help(sum)
?sum

1:10

sum(1:5)

sum(1:5,NA)

setwd("~/FIAP/aula_geoanalise")

getwd()

savehistory()

loadhistory(".rhistory")

# Lista as variáveis do ambiente
ls()

# Remove uma variável do ambiente
dir <- "teste"
remove(dir)

# Mostra as packages que estão carregas no ambiente
search()

# Instalar pacotes no ambiente (origem CRAN)
install.packages("sqldf", dependencies = TRUE)

# Remover pacotes do ambiente
remove.packages("sqldf")

# Carregar pacote no ambiente
library("sqldf")

# Pacotes instalados
installed.packages()

# lista arquivos do diretorio atual
dir()

# lista arquivos recursivamente
list.dirs()

# Permite acesso ao dataset shoes
install.packages("dataset", dependencies = TRUE)

# Raiz quadrada
sqrt(2)

# Criação de conjunto (concatena e trasforma em array)
c(1:5)

# Produto (esse exemplo gera o fatorial)
prod(c(1:5))

# log de 3 na base 10
log(x = 3, base = 10)

# Operadores
4 > 5
4 == 5
3 != 4
(4 == 5) || (3 == 3)
(1 == 1) && (2 == 2)

i = 0
while (i < 10) {
  print(i)
  i <- i + 1
}

for (i in 1:10) {
  print(rnorm(1))
}

# Desvio padrão 1
rnorm(1)

factorial(3)

# Demostração de gráficos
demo(graphics)


min(1:9)
max(1:9)
ave(1:9)
sum(1:10)
mean(1:10)

valores <- c(1:9)
valores

# Imprime quinto parametro
valores[5]

# remove item array
valores[-2]
valores

valores[1] <- "a"
valores

# Sequencias
1:10

# De 1 a 10, de dois em dois
seq(1,50,2)

# Replica data elemento x vezes
rep(1:3, each=5)

# Replica cada item, de forma individual
rep(c("a","b","c"), c(2,2,3))

# numeros aleatórios
runif(n = 3, min = 4, max = 9)

temp <- runif(n = 3, min = 4, max = 9)
hist(temp)


temp2 <- rnorm(n = 200, mean = 0, sd = 1)
hist(temp2)


# Desvio padrão =  O quanto meu valor esta distante do ponto médio
# Anotação do cálculo: Media dos valores, soma todos o valores, pego a media de 
# cada ponto, d imunioda soma total (variacia), cada ponto desse eu faço a raiz

# variancia = diferença de cada media par ao valor total

?sample
sample(x = 1:10, size = 5, replace = FALSE)


moeda <- c("cara", "coroa")
sample(x = moeda,size = 1, replace = TRUE)


vetor <- sample(x = 1:100, size = 10)

sort(x = vetor, decreasing = TRUE)
sort(x = vetor, decreasing = FALSE)


vetor

# Mostra na posição de cada elemento
?order
order(... = vetor)

sam

x <- rnorm(1)
if (x >= 1) {
  print(x)
  print(">= 1")
} else {
  print(x)
  print("< 1")
}

help("mtcars")

mtcars

View(mtcars)

str(mtcars)

is.numeric(0)
isTRUE(TRUE)


summary((1:10))


# 25% -> Primeiro quartil (singular de quartis)
# 50% -> Segundo quartil
# 75% -> Terceiro quartil



f_soma <- function( x, y = 0) {
  x + y
}

f_soma(1,2)

texto <- scan(what = "", nmax = 1)

msg <- readline("Digite um texto")

m1 <- matrix(1:6, ncol = 3);
m1

# pivotar dataframe
m2 <- t(m1)
m2

diag(6)
diag(3)


# Diagonal princial = inverto a posição
# Diagobal secundaria = inverto o sinal


tt <- cbind(1, 1:7)
tt
ee <- cbind(tt, 8:14)[, c(1,3,2)]
ee




