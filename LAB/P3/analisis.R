
bank <- function (){
  data <- read.csv("hmeq.csv")
  data <- data.frame(data)
  cls <- rpart(BAD~., data=data, method="class", minsplit=1)
  rpart.plot(cls, box.palette="RdBu", shadow.col="gray", nn=TRUE)
}

game <- function (){
  data <- read.csv("tic-tac-toe-endgame.csv")
  data <- data.frame(data)
  cls <- rpart(V10~., data=data, method="class", minsplit=1)
  rpart.plot(cls, box.palette="RdBu", shadow.col="gray", nn=TRUE)
}

regPlot <- function (x, y, regresion){
  plot(x, y)
  reg95up <- regresion
  reg95up$coefficients[1] = reg95up$coefficients[1] + 2*summary(regresion)$sigma
  reg66up <- regresion
  reg66up$coefficients[1] = reg66up$coefficients[1] + summary(regresion)$sigma
  reg66down <- regresion
  reg66down$coefficients[1] = reg66down$coefficients[1] - summary(regresion)$sigma
  reg95down <- regresion
  reg95down$coefficients[1] = reg95down$coefficients[1] - 2*summary(regresion)$sigma
  abline(reg95up, "gray", lty=3, lwd=1)
  abline(reg66up, "gray", lty=2, lwd=2)
  abline(regresion, "black", lty=1, lwd=3)
  abline(reg66down, "gray", lty=2, lwd=2)
  abline(reg95down, "gray", lty=3, lwd=1)
}

concrete1 <- function (){
  data <- read.csv("compresive_strength_concrete.csv")
  regresion <- lm(Water~Strength, data=data)
  regPlot(data$Strength, data$Water, regresion)
}

concrete2 <- function (){
  data <- read.csv("compresive_strength_concrete.csv")
  regresion <- lm(Cement~Strength, data=data)
  regPlot(data$Strength, data$Cement, regresion)
}

concrete3 <- function (){
  data <- read.csv("compresive_strength_concrete.csv")
  regresion <- lm(Blast~Strength, data=data)
  regPlot(data$Strength, data$Blast, regresion)
}

concrete4 <- function (){
  data <- read.csv("compresive_strength_concrete.csv")
  regresion <- lm(FlyAsh~Strength, data=data)
  regPlot(data$Strength, data$FlyAsh, regresion)
}

concrete5 <- function (){
  data <- read.csv("compresive_strength_concrete.csv")
  regresion <- lm(Superplasticizer~Strength, data=data)
  regPlot(data$Strength, data$Superplasticizer, regresion)
}

concrete6 <- function (){
  data <- read.csv("compresive_strength_concrete.csv")
  regresion <- lm(Coarse~Strength, data=data)
  regPlot(data$Strength, data$Coarse, regresion)
}

concrete7 <- function (){
  data <- read.csv("compresive_strength_concrete.csv")
  regresion <- lm(Fine~Strength, data=data)
  regPlot(data$Strength, data$Fine, regresion)
}

concrete7 <- function (){
  data <- read.csv("compresive_strength_concrete.csv")
  regresion <- lm(Age~Strength, data=data)
  regPlot(data$Strength, data$Age, regresion)
}

grades1 <- function (){
  data <- read.csv("Admission_Predict.csv")
  regresion <- lm(GRE~Admit, data=data)
  regPlot(data$Admit, data$GRE, regresion)
}

grades2 <- function (){
  data <- read.csv("Admission_Predict.csv")
  regresion <- lm(TOEFL~Admit, data=data)
  regPlot(data$Admit, data$TOEFL, regresion)
}

grades2 <- function (){
  data <- read.csv("Admission_Predict.csv")
  regresion <- lm(UniversityRating~Admit, data=data)
  regPlot(data$Admit, data$UniversityRating, regresion)
}

grades3 <- function (){
  data <- read.csv("Admission_Predict.csv")
  regresion <- lm(SOP~Admit, data=data)
  regPlot(data$Admit, data$SOP, regresion)
}

grades4 <- function (){
  data <- read.csv("Admission_Predict.csv")
  regresion <- lm(LOR~Admit, data=data)
  regPlot(data$Admit, data$LOR, regresion)
}

grades5 <- function (){
  data <- read.csv("Admission_Predict.csv")
  regresion <- lm(CGPA~Admit, data=data)
  regPlot(data$Admit, data$CGPA, regresion)
}

grades5 <- function (){
  data <- read.csv("Admission_Predict.csv")
  regresion <- lm(Research~Admit, data=data)
  regPlot(data$Admit, data$Research, regresion)
}
