mensagem <- "Hello World"
print (mensagem)

#  ISTO EH UM COMENTARIO

?print

# INSTALANDO UM NOVO PACOTE
install.packages ("ggplot2")

# CARREGANDO UM NOVO PACOTE
library (ggplot2)

# VETORES
cidade <- c("Brasilia",
            "Saulo Paulo",
            "Rio de Janeiro",
            "Porto Alegre"
            
)
cidade

temperatura <- c(32,22,35,17)

regiao <- c(1,2,2,3)

?c()

# ACESSANDO O PRIMEIRO ELEMENTO
cidade[1]

# ACESSANDO O INTERVALO DOS ELEMENTOS 
temperatura[1:3]

# COPIANDO UM VETOR
cidade2 <- cidade
cidade2

# EXCLUINDO O SEGUNDO ELEMENTO DA CONSULTA
temperatura[-2]

# ALTERNANDO UM VALOR
cidade2[3] <- "Belo Horizonte"

# ADICIONANDO UM NOVO ELEMENTO
cidade2[5] <- "Curitiba"

cidade2

# DELETANDO UM VALOR
cidade2 <- NULL
cidade2




# FATORES
?factor

UF <- factor (c("DF", "SP", "RJ", "RS"))

UF

?c
?levels

grau.instrucao <- factor(c("Nivel Medio",
                           "Superior",
                           "Nivel Medio",
                           "Fundamental"),
                         levels = c ("Fundamental",
                                     "Nivel Medio",
                                     "Superior"),
                         ordered = TRUE)
grau.instrucao

# LISTAS
?list()
pessoa <- list (sexo = "M", cidade = "Brasilia", idade = 20)

pessoa

# ACESSANDO O PRIMEIRO ELEMENTO DA LISTA
pessoa[1]

# ACESSANDO O VALOR DO PRIMEIRO ELEMENTO DA LISTA
pessoa [[1]]

# EDITANDO A LISTA
pessoa [["idade"]] <- 22
pessoa

#  DELETANDO O ELEMENTO DA LISTA
pessoa [["idade"]] <- NULL

pessoa

# FILTRANDO ELEMENTOS DA LISTA
pessoa [c("cidade", "idade")]

# LISTA DE LISTAS
cidades <- list (cidade = cidade,
                 temperatura = temperatura,
                 regiao = regiao)
cidades

# CRIANDO DATAFRAME COM VALORES

df <- data.frame(cidade,temperatura)

df

# CRIANDO UM DATAFRAME COM LISTAS
df2 <- data.frame (cidades)

df2

# FILTRANDO VALORES DO DATAFRAME
# RECUPERANDO VALOR DA LINHA 1, COLUNA 2
df [1, 2]

# TODAS AS LINHAS DA PRIMEIRA COLUNA
df [, 1]

# PRIMEIRA LINHA E TODAS COLUNAS
df [1,]

# SELECIONANDO AS TRES PRIMEIRAS LINHAS
# DA PRIMEIRA E ULTIMA COLUNA
df2 [c(1:3), c(1,3)]

# VERIFICANDO O NOME DAS COLUNAS
names (df)

# VERIFICANDO NUMERO DE LINHAS E COLUNAS
dim(df)

# VERIFICANDO O TIPO DE DADO
str(df)

# ACESSAR COLUNA DO DATAFRAME
df$cidade
df['cidade']

?dim
?str

?matrix()

# Matrizes
m <- matrix (seq(1:9), nrow = 3)
m

# NXOL DETERMINA EM QUANTOS COLUNAS A MATRIZ ESTA DISTRIBUIDA

m2 <- matrix (seq(1:25),
              ncol = 5,
              byrow = TRUE,
              dimnames = list(c(seq(1:5)),
                              c('A', 'B', 'C', 'D', 'E')
              )
)
m2

# FILTRANDO A MATRIZ
m2[c(1:2),c("B","C")]

# Loops

# FOR

# for (valor in sequencia){
#   codigo...
# }

# Exemplo for
for (i in seq(12)){
  print(i)
}

# WHILE / CONDICAO

i <- 0
while(i <=10){
  #código
  print(i)
  i= i+1
}

# CONTROLE DE FLUXO

#if (condicao){
#   codigo...
# }

# SE X FOR > QUE 10, ENTAO A MSG APARECE
# X=10, LOGO X>0

x = 10
if (x>0){
  print ("Numero positivo")
}

nota = 4
if (nota >= 7){
  print("Aprovado")
} else if (nota > 5 && nota < 7){
  print ("Recuperação")
} else{
  print("Reprovado")
}

# CRIANDO A FUNCAO
par.impar <- function(num){
  if ((num && 2)==0){
    return("Par")
  }else
    return("ímpar")
}

# USANDO A FUNCAO

num=3
par.impar(num)

# APPLY
?apply

x <- seq(1:9)
matriz <- matrix (x,ncol=3)
matriz

# IDENTIFICAR LINHA EH 1, COLUNA 2 
# SUM É SOMA NO R TAMBEM

result1 <- apply (matriz, 1, sum)
result1

result2 <- apply(matriz, 2, sum)
result2

?list

numeros.p <- c(2,4,6,8,10,12)
numeros.i <- c(1,3,5,7,9,11)
numeros <- list(numeros.p, numeros.i)
numeros

# MEDIA DOS VALORES
?lapply
lapply(numeros,mean)

?sapply
sapply(numeros,mean)

# GRAFICOS

?mtcars
#dataset já configurado

carros <- mtcars[,c(1,2,9)]

head(carros)

hist(carros$mpg)

plot (carros$mpg, carros$cyl)

#install.packages("ggplot2)
library(ggplot2)

ggplot(carros,aes(am))+
  geom_bar()

# JOIN
# JUNTA AS TABELAS COM BASE EM ALGUM COLUNA
# LEFT > MANTEM COLUNA DA ESQUERDA
# RIGHT > MANTEM COLUNA DA DIREITA

?head

# HEAD IMPRIME OS RESULTADOS


install.packages("dplyr")

library(dplyr)

df1 <- data.frame(Produto = c(1,2,3,5), Preco = c(15,10,25,20))
head(df1)

df2 <- data.frame(Produto = c(1,2,3,4), Nome = c("A", "B", "C", "D"))
head(df2)

# NAO APARECE O VALOR DO PRODUTO 5, PORQUE DF2 VAI SOH ATE 4


df3 <- left_join(df1,df2, "Produto")
head(df3)


df4 <- right_join(df1,df2, "Produto")
head(df4)

# ASDUAS TABELAS QUE SERAO UNIDAS, COM BASE EM UMA COLUNA "PRODUTO"

df5 <- inner_join(df1,df2, "Produto")
head(df5)

