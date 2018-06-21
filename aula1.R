# Matriz - Conjunto de array
# Dataframe - conjunto de matriz

help(sum)

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

