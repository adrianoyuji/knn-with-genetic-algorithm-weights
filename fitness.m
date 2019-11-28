#A é classe mais dominante e C a mais recessiva, logo:
#A < B < C 
function [score] = fitness(population)
  score = 0;
  if(population(1,1)<population(1,2)) # se A < B ganha 25 pontos no score
      score = score + 25
      endif
  if(population(1,1) < population(1,3)) # se A < C ganha 15 pontos no score
      score = score + 15;
      endif
  if(population(1,2) < population(1,3)) # se B < C ganha 20 pontos no score
      score = score + 20
      endif
  if(population(1,1) < population(1,2) && population(1,2) < population(1,3)) 
      score = score + 40 # se A < B < C  significa que é perfeita, logo score + 40
    endif  
  
  
endfunction
