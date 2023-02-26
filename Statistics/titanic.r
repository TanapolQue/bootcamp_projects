library(titanic)
head(titanic_train)

## DROP NA (missing values)
titanic_train <- na.omit(titanic_train)
nrow(titanic_train)

## SPLIT DATA
set.seed(9)
n <- nrow(titanic_train)
id <- sample(1:n, size = n*0.7) ## 70% train 30% test
train_data <- titanic_train[id, ]
test_data <- titanic_train[-id, ]

## Train Model
model_train <- glm(Survived ~ Pclass + Age, data = train_data, family = "binomial")
summary(model_train)
prob_train <- predict(model_train, type = "response") ## Probability
pred_train <- ifelse(prob_train >= 0.5, 1, 0)
ac_train <- mean(pred_train == train_data$Survived) 

## Test Model
model_test <- glm(Survived ~ Pclass + Age, data = test_data, family = "binomial")
summary(model_test)
prob_test <- predict(model_test, type = "response") ## Probability
pred_test <- ifelse(prob_test >= 0.5, 1, 0)
ac_test <-mean(pred_test == test_data$Survived) 

## Accuracy
cat("Accuracy of train", ac_train)
cat("Accuracy of test", ac_test)

## Confusion Matrix
conM <- table(pred_test,test_data$Survived, dnn = c("Predicted", "Actual") )

## Confusion Evaluation
cat("Accuracy:", ((conM[1,1]+conM[2,2])/sum(conM)))
cat("Precision:", conM[2,2]/(conM[2,2]+conM[2,1]))
cat("Recall:", conM[2,2]/(conM[2,2] + conM[1,2]))
precs <- conM[2,2]/(conM[2,2]+conM[2,1])
recall <- conM[2,2]/(conM[2,2] + conM[1,2])
cat("F1:", 2*((precs * recall) / (precs + recall)))












