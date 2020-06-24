score1<- c(95, 75, 85, 90, 77, 97, 67, 99, 88, 82)
scoreA <- matrix(score1, ncol = 5, byrow = TRUE)
colnames(scoreA) <- c("KOR", "ENG", "MAT", "SOC","SCI")
rownames(scoreA) <- c("MID", "FINAL")
scoreA
score2 <- c(100,65,70,70,80,60,88,99,75,90)
scoreB <- matrix(score2, ncol = 5, byrow = TRUE)
colnames(scoreB) <- c("KOR", "ENG", "MAT", "SOC","SCI")
rownames(scoreB) <- c("MID", "FINAL")
scoreB
tscore <- c(sum(scoreA["FINAL",]), sum(scoreB["FINAL",]))
max(tscore)

colnames(scoreA)[col(scoreA)[which(scoreA == max(scoreA))]]

