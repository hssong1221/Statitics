game <-function(gamecount){
  print("가위바위보게임")
  user <- c(0,0,0)
  count <- 1
  while(count <= gamecount){
    print(paste(count, "번째 게임입니다."))
    userchoice <- readline("가위, 바위, 보 중 하나를 네세요")
    com <- c("가위", "바위", "보")
    comchoice <- sample(com, 1)
    
    if(userchoice == '가위') {
      if(comchoice == '바위') {
        print("졌습니다.")
        user[1] <-  user[1] + 1
        
      }
      else if(comchoice == userchoice) {
        print("비겼습니다.")
        user[2] <- user[2] + 1
      } 
      else {
        print("졌습니다.")
        user[3] <- user[3] + 1
      }
      
    }
    if(userchoice == '바위')
    {
      if(comchoice == '보')
      {
        print("졌습니다.")
        user[1] <-  user[1] + 1
      }
      else if(comchoice == userchoice)
      {
        print("비겼습니다.")
        user[2] <- user[2] + 1
      }
      else
      {
        print("졌습니다.")
        user[3] <- user[3] + 1
      }
      
    }
    if(userchoice == '보')
    {
      if(comchoice == '가위')
      {
        print("졌습니다.")
        user[1] <-  user[1] + 1
      }
      else if(comchoice == userchoice)
      {
        print("비겼습니다.")
        user[2] <- user[2] + 1
      }
      else
      {
        print("졌습니다.")
        user[3] <- user[3] + 1
      }
      
    }
    count = count + 1 
  }
 print(paste("전적 : " , user[1] , "승" ,user[2] , "무" , user[3] ,"패"))
}
game(5)
보\
