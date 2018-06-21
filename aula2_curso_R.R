#----------------------
# Comandos CONDICIONAIS
#----------------------

# IF
# ---- -2 ---- -1 ---- 0 ---- 1 ---- 2 -----

rm(resposta)
x <- rnorm(1)   #gerar dados aleat?rios 
if (x > 1) {
  resposta <- "Maior que 1"
} else {
  resposta <- "Menor ou igual a 1"
  if (x >= -1) {
    resposta <- "entre -1 e 1"
  } else {
    resposta <- "Menor que -1"
  }
}

# Como o IF funciona 
# Transformar o mesmo c?digo para "ELSE IF"

rm(resposta)
x <- rnorm(1)
if (x > 1) {
  resposta <- "Maior que 1"
} else if (x >= -1) {
    resposta <- "entre -1 e 1"
} else {
    resposta <- "Menor que -1"
}

#----------------------- 
# Conjunto de Dados em R
#----------------------- 
mtcars
help("mtcars")

# regressao linear de MPG em fun??o do peso(WT)
lm(formula = mtcars$mpg~mtcars$wt, data = mtcars)

rl = lm(formula = mtcars$mpg~wt, data = mtcars)
str(object = rl)
# plotar um grafico simples com base no resultado do STR acima (residuals e fitted.values)
plot(x = rl$residuals, y = rl$fitted.values)
# agora com tipos de pontos
plot(x = rl$residuals, y = rl$fitted.values, type = "n") # p, b, s, l, o, S, h
plot(rl)  # Plotar diagn?stico

#----------------------- 
# VETORES
#----------------------- 
MeuPrimeiroVetor <- c(3, 45, 56, 732)
MeuPrimeiroVetor

is.numeric(MeuPrimeiroVetor) # TRUE
is.integer(MeuPrimeiroVetor) # FALSE ?? Porque ?? *** porque R ? uma linguagem que trabalha com
                             # valores bases para calculos e flutuantes. Para criar vetor inteiro,
                             # os valores tem que acompanhar a letra "L". Exemplo: 3L, 12L
is.double(MeuPrimeiroVetor)  # TRUE
V2 <- c(3L, 12L, 243L, 0L)
is.integer(V2) # TRUE
V3 <- c("a", "823", "Ola")
is.character(V3)
is.numeric(V3)
V3 <- c("a", "823", "Ola",7) # apos adicionar um valor num?rico, ele se transforma em caracter
V3 

# criacao de vetores com a funcao "c()"
x <- c(1,123,534,13,4)
y <- seq(201,250,11)
z <- rep("fiap",3)

#Graficos de vetores
num_crimes <- c(4, 5, 1)
barplot(num_crimes)
names(num_crimes) <- c("Paris","Berlim", "Rio de Janeiro")
barplot(num_crimes)

# Fun??es de Vetores
vet <- c(1,4,5,11,9)
sum(vet)
prod(vet)
mean(vet)
median(vet)
var(vet)
sd(vet)
summary(vet)

#Valores NA, NaN, Inf
0/0
10/0

#Opera??es com vetores
x <- rnorm(5)
x

for (i in x) {
  print(i)
}

#-------------
# FUN??ES EM R
#-------------
f_soma <- function(x,y=0) 
{
  x + y
}

f_soma(8)
f_soma(8,2)
f_soma(x = 10,y = 10)

# se n?o passar o valor de y
f_soma <- function(x,y=0) 
{
  if (missing(y))
    x
  else
    x + y
}

f_soma(20)
f_soma(20,10)

f_soma()

# fun??o SCAN para entrada de dados via teclado 
texto <- scan(what="")
texto

mensagem <- readline("Em que posso ajudar? ")
mensagem

#---------
# Arquivos
#---------
R.home()
getwd()
list.dirs()
list.files(pattern = "aula") #testar v?rios formas


#---------
# MATRIZES
#---------
# Gera uma matriz num?rica de 5 x 4 
y <- matrix(data = 1:20,nrow = 5, ncol = 4)  
y

# exemplo do par?metro BYROW 
y <- matrix(data = 1:20,nrow = 5, ncol = 4, byrow = FALSE)  
y

y <- matrix(data = 1:20,nrow = 5, ncol = 4, byrow = TRUE)  
y

# outro exemplo
valores <- c(10, 20, 30, 40)
nomeslinhas <- c("R1", "R2")
nomescolunas <- c("C1", "C2") 

#minhamatriz

# erro for?ado .. alterar para list()
minhamatriz <- matrix(data = valores, nrow = 2, ncol = 2, byrow = TRUE,
                      dimnames = c(nomeslinhas, nomescolunas))
# alterando para list()
minhamatriz <- matrix(data = valores, nrow = 2, ncol = 2, byrow = TRUE,
                      dimnames = list(nomeslinhas, nomescolunas))
minhamatriz

# Identificar colunas ou elementos.
minhamatriz[,4]  # 4? coluna de matriz
minhamatriz[,2]  # 2? coluna de matriz

minhamatriz[3,] # 3? linha da matriz
minhamatriz[1,] # 1? linha da matriz

minhamatriz[2:4,1:3] # linhas 2,3,4 de colunas 1,2,3

y
y[2:4,1:3] # linhas 2,3,4 de colunas 1,2,3

minhamatriz[2,2] # pegar um elemento

#-----------------------
# OPERA??ES COM MATRIZES
#-----------------------
M1 <- matrix(1:6, ncol=3)
M1

M2 <- t(M1) # TRANSPOSTA
M2

M1
M2
M1*M2 # matrizes n?o s?o recicladas como vetores

M1*M1 # ou M1^2

#--------------------------
# MATRIZES - ALGEBRA LINEAR
#--------------------------
m <- matrix(data = c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
m

#---------------------------
# Determinante de uma matriz
#---------------------------
# DP = diagonal principal 
# DS = diagonal secund?ria

det <- det(m) # multiplica a DP subtraindo da multiplica??o da DS
det

#------------------
# Matriz identidade
#------------------
diag(3) # Cria uma matriz identidade n por n

#-----------------------------
# Matriz inversa - MANUALMENTE
#-----------------------------
# somente para matrizes quadradas.. normalmente 2x2
# determinante n?o pode ser ZERO!
1  2
3  4

# inverte diagonal principal
# muda sinal da diagonal secund?ria
 4  -2
-3   1

# como vou lembrar ???
# DP (P de posi??o)
# DS (S de sinal)
 
# depois divide cada elemento pelo determinante
 4/-2    -2/-2
-3/-2     1/-2
 
# fica assim
-2       1
3/2     -1/2

# no R 
m
solve(m) # Matriz inversa 

diag(m) # Retorna os elementos da diagonal principal de m

nrow(m) #N?mero de linhas  da matriz M
ncol(m) #N?mero de colunas da matriz M

#------------------------------
# MATRIZES - FUN??ES AUXILIARES
#------------------------------
m <- cbind(1, 1:7) # the '1' (= shorter vector) is recycled
m
m <- cbind(m, 8:14)[, c(1, 3, 2)] # insere uma coluna
m

n <- cbind(rep("a",7))
n

o <- cbind(m,n)[,c(2,1,4,3)]
o

p <- rbind(o,seq(10,13))  # insere uma linha na matriz
                          # os valores passam a ser CARACTER
p

q <- rbind(p,rep(TRUE,4))  # insere uma linha na matriz
                           # os valores continuam a ser CARACTER
q

typeof(q) # ver o tipo da matriz
nrow(q) # n?mero de linhas da matriz
ncol(q) # n?mero de colunas da matriz
dim(q) # dimens?o da matriz

#--------------
# MeDIA
#--------------
notas <- c(5, 3, 4, 8, 9, 10, 4, 4)
names(notas) <- c('Carlos', 'Roberta', 'Lilian', 'Jos?', 'Jo?o', 'Danilo', 'Marcos', 'Murilo')
media <- mean(notas)
barplot(notas)
abline(h = media)

#--------------
# MEDIANA
#--------------
sort(notas) # só para mostrar que a mediana começa pelo SORT()
mediana <- median(x = notas) 
abline(h = mediana)

#--------------
# DESVIO PADR?O
#--------------
peso <- c(68, 55, 105, 80, 72, 73, 89, 80)
barplot(peso)
media_peso <- mean(peso)
media_peso 
abline(h=media_peso)
desvio <- sd(peso) # ra?z quadrada da VARI?NCIA
abline(h = media_peso + desvio)
abline(h = media_peso - desvio)


#------------
# DATA FRAMES
#------------
d <- c(1,2,3,4)
e <- c("vermelho", "branco", "vermelho", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
meusdados <- data.frame(d,e,f)
meusdados
names(meusdados) <- c("ID","Cor","Flag") #nomes de vari?veis
meusdados
meusdados[2:3]  #colunas do frame de dados
meusdados[c("ID","Flag")] # colunas ID e Idade
meusdados$Cor # vari?vel x1 do frame de dados

class (meusdados) #classe do objeto
head(x = meusdados,n = 2)  # Imprimir primeiras 2 linhas 
tail(x = meusdados, n = 1) # Impress?o das ?ltimas 5 linhas

# abrir arquivo e transformar em dataset
getwd()
agenda <- read.csv2(file = "C:/teste/agenda2.csv", header = TRUE, sep = ";")
View(agenda)
str(agenda)
dim(agenda)

# abrir pelo menu

# abrir pelo Excel 
agenda <- read_excel("C:/teste/agenda.xlsx", 
                     +     col_types = c("numeric", "text", "text", 
                                         +         "numeric"))

# abrir pelo Excel (outra planilha)
agenda_telefone <- read_excel("C:/teste/agenda.xlsx", sheet = "telefones")
agenda_telefone

# SQLDF
install.packages("sqldf")
library("sqldf")
library(data.table)
agenda
ds_agenda <- sqldf('select aluno, nota from agenda')
ds_agenda
ds_agenda$nota_pond <- ds_agenda$NOTA*0.7
ds_agenda

setwd("/Users/vsmacedo/OneDrive/VSM/FIAP/BDT_Exploração de Dados Visuais/50BI/aula1_para_BI/Parte_B/")

getwd()

list.files()

# dm_ies   -- alterar para planilha no portal
dm_ies <- data.table("C:/teste/DM_IES.csv", sep=";",header=TRUE)

dm_ies <- fread("C:/teste/DM_IES.csv", sep=";",header=TRUE)

# 
library(readxl)
X1000_Startups <- read_excel("~/OneDrive/VSM/FIAP/BDT_Exploração de Dados Visuais/50BI/aula1_para_BI/Parte_B/1000-Startups.xlsx")

View(X1000_Startups)

# com SQL
X1000_Startups_sql <- sqldf('select name, industry from X1000_Startups')

View(X1000_Startups_sql)

-------------------------------------------
-- Script 2 - atual
-------------------------------------------
X1000_Empresas <- read_excel("C:/Users/logonpf/Downloads/1000-Startups.xlsx")
View(X1000_Empresas)

getwd()

#alterar o diretorio
setwd("C:/aula2")

getwd()

Empresas <- read_excel("1000-Startups.xlsx")
Empresas$Industry

# abrir arquivo texto
Movie_Ratings <- read_csv("C:/Users/logonpf/Downloads/Movie-Ratings.csv")

Filmes <- Movie_Ratings

Filmes

View(Empresas)

Empresas$Name  #lista a coluna Name

View(Empresas[1:5,2])

Empresas_filtro <- Empresas[1:5,2]

Empresas_filtro

# instalar o pacote SQLDF
install.packages("sqldf", dependencies = TRUE)
library(sqldf)

# installed.packages()

View(Empresas)
Empresas_sql <- sqldf('select Name, Industry, City from Empresas')
View(Empresas_sql)

Empresas_sql_IT <- sqldf('SELECT Name, 
                                 Industry, 
                                 City,
                                 Employees
                         FROM Empresas
                         WHERE Employees > 100
                         ORDER BY 4 DESC')

View(Empresas_sql_IT)

#--------------------------
# Ordernar e ranquear dados
#--------------------------
vetor <- sample(x = 1:100, size = 10)
vetor

# sort ascendente
sort(x = vetor, decreasing = FALSE)

# sort descendente
sort(x = vetor, decreasing = TRUE)

# ordenar
vetor
order(vetor)

# conjuntos
A <- c(1,2,3,4,5)
A
B <- c(4,5,6,7)
B

union(x = A, y = B)

intersect(x = A, y = B)

setdiff(A,B) # o que tem em A que não tem em B

setdiff(B,A)

setequal(A,B)

z <- c(1:5)
w <- c(1:5)

setequal(z,w)

# tabula e retorna a quantidade de elementos DISTINCT
table(Empresas$Name)

# PARA ENTENDER MELHOR O comando TABLE
times <- sample(x= c("Real Madrid", "Atletico","Monaco","Juventus"),
                size = 1000, replace = TRUE)

times

table(times)

summary(Empresas)

# SQL Join
View(Empresas)

Financ <- read_excel("C:/Users/logonpf/Downloads/1000-Startups.xlsx",
                     sheet = "Financials")
View(Financ)

#renomar uma coluna
Financ$Growth_Perc_2015 <- Financ$`2015 Growth %`

# coluna calcular
Financ$Revenue_2015 <- Financ$`2015 Revenue`*0.1

View(Financ)

# join
Empresas_Financ_2015 <- sqldf('SELECT e.ID,
                                      e.Name Nome_emp,
                                      e.Industry,
                                      f.[2015 Revenue],
                                      f.[2015 Expenses],
                                      f.[2015 Growth %]
                               FROM Empresas e INNER JOIN Financ f
                                 ON e.ID = f.ID
                              ')

View(Empresas_Financ_2015)
View(Empresas_Financ_2015)


--------------------------------------------------------------
-- JOIN - script_aula2_IES
--------------------------------------------------------------
# carrear pacotes
library(readr)
library(sqldf)
libray(readr)

# importar base IES 


DM_IES <- 
    read_delim("C:/Users/logonpf/Downloads/dados_inep/dados/DM_IES.csv", 
  + ";", escape_double = FALSE, locale = locale(encoding = "ISO-8859-1"), 
  + trim_ws = TRUE)

View(DM_IES)

# Filtro p/ MG
DM_IES_MG <- subset(DM_IES, DM_IES$CO_UF_IES==31)

View(DM_IES_MG)

# importar DOCENTES
DM_DOCENTE <- 
  read_delim("C:/Users/logonpf/Downloads/dados_inep/dados/DM_DOCENTE.csv", 
    ";", escape_double = FALSE, locale = locale(encoding = "ISO-8859-1"), 
    trim_ws = TRUE)

View(DM_DOCENTE)

DOCENTES_MG <- subset(DM_DOCENTE, DM_DOCENTE$CO_IES %in% DM_IES_MG$CO_IES)

View(DOCENTES_MG)

summary(DOCENTES_MG)
