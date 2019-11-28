function [filho1,filho2] = crossover(pai1,pai2)
  
  filho1 = [pai2(1,1),pai1(1,2),pai2(1,3)]
  filho2 = [pai1(1,1),pai2(1,2),pai1(1,3)]
  
  
endfunction
