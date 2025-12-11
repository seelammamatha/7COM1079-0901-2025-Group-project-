print(colnames(Total_Number_of_Participants))

head(Total_Number_of_Participants,5)

head(Total_Number_of_Participants[, c("State Agency or Indian Tribal Organization", "2012-10-01 00:00:00", "2013-03-01 00:00:00", "2013-09-01 00:00:00", "Average Participation")], 5)

names(Total_Number_of_Participants)[names(Total_Number_of_Participants) == "State Agency or Indian Tribal Organization"] <- "RegionProgram"
names(Total_Number_of_Participants)[names(Total_Number_of_Participants) == "2012-10-01 00:00:00"] <- "Oct_2012"
names(Total_Number_of_Participants)[names(Total_Number_of_Participants) == "2013-03-01 00:00:00"] <- "Mar_2013"
names(Total_Number_of_Participants)[names(Total_Number_of_Participants) == "2013-09-01 00:00:00"] <- "Sep_2013"
names(Total_Number_of_Participants)[names(Total_Number_of_Participants) == "Average Participation"] <- "Avg_Participation"

head(Total_Number_of_Participants[, c("RegionProgram", "Oct_2012", "Mar_2013", "Sep_2013", "Avg_Participation")],5)

table(Total_Number_of_Participants$"RegionProgram")
table(Total_Number_of_Participants$"Avg_Participation")

summary(Total_Number_of_Participants)


hist(
  Total_Number_of_Participants$`Avg_Participation`,
  breaks = 20,
  xlab = "Average Monthly Participants",
  ylab = "Number of programs",
  main = "How Big are these programs",
  col = "green"
)
