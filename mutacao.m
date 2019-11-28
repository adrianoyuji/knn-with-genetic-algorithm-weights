function [f1,f2] = mutacao(filho1,filho2)
  f1 = filho1
  f2 = filho2
  
  randomArray = 1 + (10-1+1)*rand(1,1);
  if(randomArray == 7)
  f1(:,2) = rand(popSize,1)
endif

  randomArray = 1 + (10-1+1)*rand(1,1);
  if(randomArray == 7)
  f2(:,2) = rand(popSize,1)
endif
  
endfunction
