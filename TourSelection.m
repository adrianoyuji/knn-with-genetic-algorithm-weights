function [melhor] = TourSelection(population,k)

  for i=1:k
    randomArray = 1 + (30-1+1)*rand(1,1);
    disp(floor(randomArray))
    selecionados(i,:) = population(floor(randomArray),:) 
  endfor
  selecionados = sortrows(selecionados,-4)
  melhor = selecionados(1,:)
 
  
endfunction
