#--------------------
# Introducao ao R
#--------------------
x < 10;

load("minha_area3.rdata")

save.image("C:\\FIAP\\area1.rdata")

options()

(options)

help("options")

pi

options(digits = 3)

pi

print(pi,digits = 16)

history(max.show = 10)

history(5)

help(history)

history()

getwd()

setwd("C:/Rlabs")

savehistory(file = "meuhist1.Rhistory")

getwd()

loadhistory("meuhist1")

help.start()

help(sum)

sum(1:5)

?sum

sum(1:5,NA)

sum(1:5,NA, na.rm = TRUE)

getwd()

loadhistory(".rhistory")

ls()

x <- 2;

y <- 10;

x1 <- 5;

ls(pattern = "x")

rm(y)

y

search()

install.packages("sqldf")

library("sqldf")

search()

library("MASS")

shoes

help(MASS)

??MASS

shoes$A

help("shoes")

install = function() {
  install.packages(c("moments","graphics","Rcmdr","hexbin"),
                   repos="http://lib.stat.cmu.edu/R/CRAN")
}
install()

# ------------------------------
# Tipos de vari?iveis
#--------------------

# integer
x <- 2L
typeof(x)

# double
y <- 2.5
typeof(y)

# complex
z <- 3 + 2i
typeof(z)

# character
a <- "h"
typeof(a)

# logical
q1 <- T
typeof(q1)

q1

q2 <- FALSE
typeof(q2)

# ------------------------------
# USANDO VARIAVEIS
#-----------------
A <- 10
B <- 5

C <- A + B
C

# variavel 1
var1 <- 2.5
var2 <- 4

resp <- sqrt(var2)
resp

greeting <- "Hello"
name <- "Bob"
message <- paste(greeting, name)
message

sqrt(9) # Tira a raiz quadrada dos argumentos entre par?nteses

sqrt(3*3^2) # raiz quadrada de 27

sqrt((3*3)^2) # raiz quadrada de 81

# prod ? a fun??o para multiplica??o

prod(2,2) # O mesmo que 2x2

prod(2,2,3,4) # 2x2x3x4

# log ? a fun??o para calcular o logaritmo
log(3) # log natural de 3

log(3,10) #log de 3 na base 10
log(3,base = 10) #o mesmo que acima!
log10(3) #o mesmo que acima! log 3 na base 10

# ------------------------------
# VARIAVEIS LOGICAS E OPERADORES
# ------------------------------

# Logical
# TRUE  T
# FALSE F

4 < 5
10 > 100
4 == 5
3 != 4

(4 == 5) | (3 != 4) # OU 
(4 == 5) || (3 != 4)
(4 == 5) && (3 != 4) # AND

result <- !(5 > 1)
result

isTRUE(result)

# ----------
# WHILE LOOP
# ----------
while(FALSE){ 
  print("fiap")
}

x < 5;
while(x<5) {
  print(x);
  x <- x + 1;
}

while(TRUE){
  print("Ola mundo")
}

for(i in 1:10) {
  x[i] <- rnorm(1)
}

x

abs(3-9) # abs = modulo, |3-9|

factorial(3) # 3!

demo(graphics)

#-----------------------
# Criando objetos 
#-----------------------
valores <- c(22,28,37,34,13,24,39,5,33,32) 

valores

length(valores)

Letras <- c("a","b","c","da","edw") 

Letras 

palavras<-c("S?o Paulo","Fortaleza","Recife","Rio de Janeiro") 

palavras

max(valores)

min(Aves)

sum(valores)

valores^2

valores/10

n.valores <- length(valores)

media.valores <- sum(valores) / n.valores

media.valores

mean(valores) # o mesmo acima!

valores

valores[5]

palavras[3]

valores[c(1,3,10)]

valores[-10] #excluir um valor por posi??o, 
            # nesse caso o primeiro, 22

valores[1] <- 100 #alterar o primeiro valor para 100 

valores

matrix(valores,2,5)
valores[1] <- 22 #voltar como antes

valores

#------------------
# Transformar dados
#------------------

sqrt(valores)

log10(valores)

log(valores)

valores.log <- log10(valores)

valores.log

#--------------------------------
# Listar e remover objetos salvos
#--------------------------------
ls()

rm(B)

ls()

B

#-----------------------------------
# Gerar sequ?ncias (usando : ou seq)
#-----------------------------------
1:10

5:15

seq(1,10,2)

seq(1,100,5)

#-----------------------
# Gerar repeti??es (rep) 
#-----------------------
rep(2,10)

rep("teste", 5)

rep(1:3,2)

rep(1:3,each=5)

rep(c("A","B"),5)

rep(c("Tr?s","Dois","Sete","Quatro"),c(3,2,7,4))

# Parei aqui

#-----------------------
# Gerar dados aleat?rios 
#-----------------------

# runif (Gerar dados aleat?rios com distribui??o uniforme) 
runif(200,80,100)

temp <- runif(n = 200, min = 80, max = 100)

temp

hist(temp)

# rnorm (Gerar dados aleat?rios com distribui??o normal) 
rnorm(n = 200,mean = 0,sd = 1)

temp2 <- rnorm(n = 200, mean = 0, sd = 1)

temp2

hist(temp2)

#--------------------------
# Fazer amostras aleat?rias 
#--------------------------
sample(x = 1:10,size = 5,replace = FALSE)

sample(x = 1:10,size = 15,replace = FALSE)

sample(x = 1:10,size = 15,replace = TRUE)


# Com a fun??o sample n?s podemos criar varios processos de 
# amostragem aleat?ria. Por exemplo, vamos criar uma moeda e 
# "jog?-la" para ver quantas caras e quantas coroas saem em 10 jogadas.

moeda<-c("CARA","COROA") # primeiro criamos a moeda

moeda

sample(moeda,10)

#ops! Esqueci de colocar replace=TRUE
sample(moeda,10,replace=TRUE) # agora sim

#-------------------------
# Ordenar e ranquear dados
#-------------------------
vetor <- sample(x = 1:100,size = 10)

vetor

#sort ascendente
sort(x = vetor,decreasing = FALSE)

#em ordem decrescente
sort(x = vetor,decreasing = TRUE)

# ordenar
vetor 
order(... = vetor) # mostra na ordem da POSI??O de cada elemento

# ranquear
#vetor
#rank(x = vetor)

#------
# LAB 1
#------

20)
A <- c(1, 2, 3, 4, 5) 
A
B <- c(4, 5, 6, 7) 
B

union(x = A, y = B)

intersect(x = A, y = B)

setdiff(A,B) # o que tem em A e n?o tem em B

setdiff(B,A) # inverso acima!

# outros exemplos .. help("setdiff")
(x <- c(sort(sample(1:20, 9)), NA))
(y <- c(sort(sample(3:23, 7)), NA))
union(x, y)
intersect(x, y)
setdiff(x, y)
setdiff(y, x)

setequal(x, y) # FALSE

z <- c(1:5) 
w <- c(1:5) 
setequal(z,w) # agora sim ... TRUE


# Exerc?cio 22
abs(23-32)

# Exerc?cio 23

# ERRADO!!! 
rep(c("A","B"),5) 

# CERTO!
locais <- rep(c("A","B"),each=5) 

locais

# Exerc?cio 24
sample(x = 1:60,size = 6,replace = FALSE)

# Exerc?cio 30
times <- sample(x= c("Real Madrid","Atletico de Madrid", 
                     "Monaco", "Juventus"),
                size = 1000,replace = TRUE)

?table

table(... = times)

# class(times)

help("attach")

attach(mtcars) # cria um atalho no R para as vari?veis do dataset mtcars

plot(wt, mpg)

abline(a = mpg, b = wt)  # linha de tend?ncia
title("Regress?o de MPG (Milhas/Gal?o)  por Peso")

pie(wt, mpg)

boxplot(wt, mpg)

