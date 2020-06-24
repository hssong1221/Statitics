repgame <- function(n)
{
  i <- n
  awin <- 0
  bwin <- 0
  lastdice <- 0
  
  while(i > 0)
  {
    initial <- 1
    ruleA <- 5000
    ruleB <- 5000
    while(ruleB < 10000 & ruleA < 10000)
    {
      dice <- sample(1:6, 1)
      if(initial == 1)
      {
        if((6 %% dice) == 0)
        {
          ruleB = ruleB - 500
          ruleA = ruleA + 500
          print("A")
        }
        else
        {
          initial <- 2
          print("draw")
        }
      }
      else if( (dice %% 2) == (lastdice %% 2) )
      {
        ruleB = ruleB + 1000
        ruleA = ruleA - 1000
        print("B")
      }
      else if((6 %% dice) == 0)
      {
        ruleB = ruleB - 500
        ruleA = ruleA + 500
        print("A")
      }
      else
      {
        initial <- 2
        print("draw")
      }
      
      initial <- 2
      lastdice <- dice
    }
    
    i <- i - 1
    
    if(ruleA >= 10000)
    {
      awin <- awin + 1
    }
    else{
      bwin <- bwin + 1
    }
    print("----------------------")
  }
  print(awin / n)
  print(bwin / n)
}

repgame(10000)
