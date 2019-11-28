function [pesoA,pesoB,pesoC] = geraPesos()
  
  popSize = 30 #numero da populacao é 30
  
  population(:,1) = rand(popSize,1) #gera populacao de pesos aleatoriamente
  population(:,2) = rand(popSize,1)
  population(:,3) = rand(popSize,1)
  
  for i=1:popSize
    population(i,4) = fitness(population(i,:)) #calcula o fitness da populacao
  endfor

  disp(population)

  population = sortrows(population,-4) #ordena de ordem decrescente a populacao
 
  for j=1:5 #haverá 5 gerações 
    newPop = [] #declara nova populacao
    cont = 1
    while (cont <= popSize/2)
      pai1 = TourSelection(population,3)#encontra os pais via Seleção de Torneio
      pai2 = TourSelection(population,3)
      [filho1,filho2] = crossover(pai1,pai2) #cruza os pais para gerar filhos
      [filho1,filho2] = mutacao(filho1,filho2) #20% dos filhos serem mutados
      newPop = [newPop;filho1;filho2]
      cont = cont +1
    endwhile
    for i=1:popSize
      newPop(i,4) = fitness(newPop(i,:)) #calcula o fitness da nova populacao
    endfor
    population = sortrows(population,-4) #ordena de ordem decrescente a populacao
    population = newPop
  endfor
  
  population = sortrows(population,-4)
  input('press return to continue');
  pesoA = population(1,1)
  pesoB = population(1,2)
  pesoC = population(1,3)
  
endfunction
#A é classe mais dominante e C a mais recessiva, logo:
#A < B < C 
