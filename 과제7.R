game <- function(gamecount){
  print("카드 뒤집기 게임")
  alicescore <- 0
  bobscore <- 0
  count <- 1
  
  while(count <= gamecount){
    print(paste("------------------",count, "번째 게임입니다.----------------------"))
    cardnum <- 50
    card <- c(1:50)
    
    while(0 < cardnum) {
      alicechoice <- sample(card, 1)
      if((alicechoice %% 2) == 0){
        alicescore <- alicescore + 2
      }
      else{
        alicescore <- alicescore - 1
      }
      card <- card[card != alicechoice]
      cardnum <- cardnum - 1
      
      
      bobchoice <- sample(card, 1)
      if(length(card) == 1){
        print(paste("Alice는", alicechoice," card입니다. Bob은", card[1]," card입니다."))
        
      }
      else{
        print(paste("Alice는", alicechoice," card입니다. Bob은", bobchoice," card입니다."))
      }
      if((bobchoice %% 2) == 0){
        bobscore <- bobscore + 0
      }
      else{
        bobscore <- bobscore + 1 
      }
      card <- card[card != bobchoice]
      cardnum <- cardnum - 1
    }
    
    count <- count + 1
  }
  print(paste("Alice의 평균 점수는", (alicescore/gamecount), "입니다."))
  print(paste("Bob의 평균 점수는", (bobscore/gamecount), "입니다."))
}

game(10)


