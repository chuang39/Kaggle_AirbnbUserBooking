
# Predict the probabily each user will book on airbnb

train <- read.csv('data/train_users_2.csv', stringsAsFactors = FALSE)

# clean train$age
summary(train$age)
train$age[train$age < 14 | train$age > 90] <- -1
train$age[which(is.na(train$age))] = -1
summary(train$age)

#TODO: explore following data fields: Gender, Sign-up method, Sign-up app, Sign-up flow, Launguage and etc
table(train$gender)
table(train$signup_method)

# NDF: not booked yet
#   NDF     US  other     FR     IT     GB     ES     CA     DE     NL     AU     PT 
# 124543  62376  10094   5023   2835   2324   2249   1428   1061    762    539    217 
sort(table(train$country_destination), decreasing = TRUE)

head(train$date_account_created)
tail(train$date_account_created)

head(train$timestamp_first_active)  # [1] 2.009032e+13 2.009052e+13 2.009061e+13 2.009103e+13 2.009121e+13 2.010010e+13
options("scipen" = 10)              # Change the scientific notation to represent timestamp

