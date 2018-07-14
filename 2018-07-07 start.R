getwd() # 경로 불러오기

setwd("C:\\Users\\song\\rlangworkspace") # 경로 세팅

# 오칙 연산

1+1
a <- 1
a
b <- 2
b
a+b

 # concatenate c() : c -> Java Function , Vector (Java Object (선언되어진 객체) )

vec01 <- c(1,2,3,7)
vec01


vec02 <- c(1:5)
vec02


vec03 <- seq(1,5)
vec03

vec04 <- 1:5
vec04


vec05 <- seq(1,10, by = 2) # by : 공차 
vec05

class(vec05) # type 확인 함수 

vec06 <- c("String")
vec06

class(vec06)

vec06 <- 1:3
mean(vec06) # mean 평균을 구하는 함수

## 5 + 7 더하기 로직을 구하시오.

x <- 5 
y <- 7

x+y

## 5 + 7 더하기 로직을 식까찌 보이도록 하시오.

cat(x,"+",y,"=",x+y) # 문자열 붙여주는 함수 Java String concat

## 더하기 로직 구하시오. 

plus <- function(x,y){return(x+y)} # 모든 식을 함수로 만들어서 처리 해라
x <- 5
y <- 2

cat(x,"+",y,"=",plus(x,y)) 

minus <- function(x,y){return(x-y)}

x <- 10
y <- 5

cat(x,"-",y,"=",minus(x,y))

multiplication <- function(x,y){return(x*y)}

cat(x,"*",y,"=",multiplication(x,y))

divid <- function(x,y){return(x%/%y)} # 나누기 몫

cat(x,"/",y,"=",divid(x,y))

remainder <- function(x,y){return(x%%y)}

## assignment <- 할ㄷ
## if branch : 분기문
## loop : 반복문


## if - else

op <- "+"
x <- 6
y <- 3


if(op == "+")cat(x,op,y,"=",x+y) else
if(op =="-")cat(x,op,y,"=",x-y) else
if(op =="*")cat(x,op,y,"=",x*y) else
if(op =="/")cat(x,op,y,"=",x%/%y) else
if(op =="%")cat(x,op,y,"=",x%%y) else
  print("Error")

aa <- function(x,y,op){
  res <- if(op == "+")cat(x,op,y,"=",x+y) else
  if(op =="-")cat(x,op,y,"=",x-y) else
  if(op =="*")cat(x,op,y,"=",x*y) else
  if(op =="/")cat(x,op,y,"=",x%/%y) else
  if(op =="%")cat(x,op,y,"=",x%%y) else
    print("Error")
  return(res)
}

aa <- function(x,y,op){
  return(
    if(op == "+")cat(x,op,y,"=",x+y) else
    if(op =="-")cat(x,op,y,"=",x-y) else
    if(op =="*")cat(x,op,y,"=",x*y) else
    if(op =="/")cat(x,op,y,"=",x%/%y) else
    if(op =="%")cat(x,op,y,"=",x%%y) else
      print("Error")
  )
}

aa(1,2,"+") 


op <- "+"
x <- 6
y <- 3

# toString 문자열로 형변환 Java StringValueOf()

cat(
  x,
  op,
  y,
  "=",
  switch(
    op,
    "+" = toString(x+y),
    "-" = toString(x-y),
    "*" = toString(x*y),
    "/" = toString(x%/%y),
    "%" = toString(x%%y),
    "ERROR"
  )
)

op <- "+"
x <- 6
y <- 3

calculator1 <- function(x,y,op){
  return(
    if(op == "+")(x+y) else
    if(op =="-")(x-y) else
    if(op =="*")(x*y) else
    if(op =="/")(x%/%y) else
    if(op =="%")(x%%y) else
      print("Error")
  )
}

cat(1,"+",2 ,"=", calculator1(1,2,"+"))


calculator2 <- function(x,y,op){
  return(
    switch(
      op,
      "+" = toString(x+y),
      "-" = toString(x-y),
      "*" = toString(x*y),
      "/" = toString(x%/%y),
      "%" = toString(x%%y),
      "ERROR"
    )
  )
}

calculator2(1,2,"+")

x <- 10
y <- 7
op <- "+"

cat(x,op,y ,"=", calculator2(x,y,op))

bb <- function(){
  st <- "+" 
  kk <- "="
  st2 <- cat("2222",st,"1111",kk)
  
  return(
    st2
  )
}

bb()

bb <- function(){
  st <- "+" 
  kk <- "="
  return(
    cat("2222",st,"1111",kk)
  )
}


bb()


ls()

rm(bb)



## 성 적 표
# kor, eng , math , 총점, 평균
# grade(80,80,80)
#총점 : 240 평균 80

a <- 80
b <- 80
c <- 80

d <- c(a,b,c)
d
e <- mean(d)
e

sumOb <- a+b+c

sumOb

grade <- function(a,b,c){
  d <- c(a,b,c)
  e <- mean(d)
  return(e)
}


grade(100,80,100)


cat("합계 : ",sumOb ,"평균 : ", grade(100,80,100))

a <- 80
b <- 95
c <- 80

d <- c(a,b,c)
d

cat("합계 : ", sum(a+b+c), "평균 : ", mean(d) )


## 점수 a 80 b 80 c 80 총점 평균 구하고 평균 90 이상 A  80 이상 B 70이상 C 60이상 D 50이상 E 그 밖 F

d <- c(a,b,c)
e <- mean(d)
e

## switch -> 조건문에는 문자열 만 들어올수 있다.

grade2 <- function(a,b,c){
  
  sum <- a+b+c
  
  avg <- sum %/% 3
  
  div <- toString(avg %/% 10)
  
  return(
    switch (div,
       '10' = "A",
       '9' = "A",
       '8' = "B",
       '7' = "C",
       '6' = "D",
       '5' = "E",
       "F"
    )
  )
}

grade2(100,90,100)

cat("합계 : ", sum(a+b+c), "평균 : ", mean(d) , "등급 : " ,grade2(100,90,100))




grade3 <- function(a,b,c){
  
  k <- c(a,b,c)
  
  avg <- mean(k)
  
  div <- toString(avg %/% 10)
  
  return(
    switch (div,
            '10' = "A",
            '9' = "A",
            '8' = "B",
            '7' = "C",
            '6' = "D",
            '5' = "E",
            "F"
    )
  )
}

grade3(100,90,100)






























