

# R 언어에는 객체타입 대표 6로
# Vector, List, Matrix, Array, Factor, Data Frame
# 이 있고... 이들은 Vector 가 확장합니다.
# Vector 는 다시 6개 기본타입에 따라 
# Logical(T,F), Numeric(실수), Integer(정수), 
# Complex (허수), Character (문자열), Raw (주소값)
# 로 종류가 나뉘는데 보통은 
# Logical, Numeric, Character 세가지가 쓰입니다

## 월요일 문제
# 체질량 지수(體質量指數, Body Mass Index, BMI)는 인간의 비만도를 나타내는 지수로, 
# 체중과 키의 관계로 계산된다.
# 키가 t 미터, 체중이 w 킬로그램일 때, BMI는 다음과 같다.
# (키의 단위가 센티미터가 아닌 미터임에 유의해야 한다.)
# 공식은 https://ko.wikipedia.org/wiki/%EC%B2%B4%EC%A7%88%EB%9F%89_%EC%A7%80%EC%88%98
# 가면 구할 수 있습니다.
# 이 BMI 지수를 구하는 Function 객체를 구하시오
# 이 문제는 스위치버전은 구할수 없고 if-else 버전만 가능합니다. 몸무게 / 키 제곱

# 고도 비만 : 35 이상
# 중등도 비만 (2단계 비만) : 30 - 35
# 경도 비만 (1단계 비만) : 25 - 30
# 과체중 : 23 - 24.9
# 정상 : 18.5 - 22.9
# 저체중 : 18.5 미만

x <- 180 # 키
y <- 70 # 몸무게

bmi <- function(x,y){
    nBmi <- y / ( (x * 0.01) * (x * 0.01) )
    nBmi
    sBmi <- ""
    
  return (
    if(nBmi >= 35 ) (sBmi <- "고도 비만") else
      if(nBmi > 30 ) (sBmi <-"중고도 비만") else
        if(nBmi > 25 ) (sBmi <-"경도 비만") else
          if(nBmi > 23 ) (sBmi <-"과체중") else
            if(nBmi > 18.5) (sBmi <-"정상") else
                (sBmi <-"저체중")
  )
}

res <- bmi(180, 110) # 백터 객체

res # 스칼라 객체 (Java 람다 객체)

# '정상' 으로 나오도록 코드를 완성하시오



##  문자열에서 필요한 값 추출하기
# substr("문자열", 시작인덱스, 끝인덱스) 인덱스 시작은 1
# 아래 - 부분도 한자리로 인식함
stu <- "800101-1"
sub <- substr(stu, 8,8)
sub
# 실행하면 1이 찍힘
# 이것을 통해서 주민번호를 통한 성별 추출이 가능함
# 1, 3 남자  2, 4 여자 5, 6 은 외국인...그외는 잘못된 값
# 문제
# 위 문법을 이용해서 주민번호를 입력하면
# 남, 여, 외 이렇게 출력되는 객체(함수)를 완성하시오


rsnt <- function(r){
  
  sRsnt <- substr(r, 8, 8)
  
  return(
    switch (sRsnt,
      '1' = "남" ,
      '3' = "남" ,
      '2' = "여" ,
      '4' = "여" ,
      "외"
    )
  )
}


rsnt("870201-5")

rsnt <- function(r){
  
  sRsnt <- substr(r, 8, 8)
  
  return(
    switch (sRsnt,
            '1' = "남" ,
            '3' = "남" ,
            '2' = "여" ,
            '4' = "여" ,
            '5' = "외국인" ,
            '6' = "외국인" ,
            "질못된 값"
    )
  )
}

rsnt("870201-5")


bmi3 <- function(x,y){
  nBmi2 <- y / ( (x * 0.01) * (x * 0.01) )
  nBmi2
  
  return (
    if(nBmi2 >= 35 ) ( "고도 비만") else
      if(nBmi2 >= 30 & nBmi2 < 35) ("중고도 비만") else
        if(nBmi2 >= 25 & nBmi2 < 30) ("경도 비만") else
          if(nBmi2 >= 23 & nBmi2 < 25) ("과체중") else
            if(nBmi2 >= 18.5 & nBmi2 < 23) ("정상") else
                ("저체중")
  )
}

# 고도 비만 : 35 이상
# 중등도 비만 (2단계 비만) : 30 - 35
# 경도 비만 (1단계 비만) : 25 - 30
# 과체중 : 23 - 24.9
# 정상 : 18.5 - 22.9
# 저체중 : 18.5 미만

res2 <- bmi3(180, 90)
res2





# sample(1:3,1,replace = TRUE) 하면 1부터 3까지 중에서 랜덤숫자 
# 하나를 반환합니다. 1:3 이 범위고, 1이 갯수, replace = TRUE 는 한번 뽑은
# 숫자를 다시 출력할지 여부인데 True를 주면 다시 뽑힐 수 있습니다. 즉 2
# 가 랜덤으로 나왔어도 다음 회차에서 다시 2가 나올 수 있습니다.
# 이를 이용해서 가위바위보 를 함수로 생성하세요.
# 예제는 아래와 같습니다.
# comVal <- sample(1:3,1,replace = TRUE) 
# myVal <- 2
# rps <- function(comVal, myVal)

# 이김 

comVal <- sample(1:3,1,replace = TRUE) 

comVal

myVal <- 2

myVal
rps <- function(comVal, myVal){
  
  
}

rps

# 가위 바위 보 --> 가위 가위 비김 가위 바위 짐 가위 보 승리












