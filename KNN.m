%algoritmo knn (k nearest neighbor)
function[base,rotulos]= KNN(base,rotulos,objetos,k)
[lines,columns] = size(base)

   for i=1: lines
     vetor(i) = DISTEUCLIDIANA(objetos(1, :), base(i, :));
  endfor
  [sorted,index] = sort(vetor);
  Knear = index(1:k);
  frequencia = [0;0;0]
  for i=1:3 #calcula a frequencia que a classe i aparece
    frequencia(i,1) = frequencia(i,1) + contaOcorrencia(Knear,rotulos,i)
  endfor

  [pesoA,pesoB,pesoC] = geraPesos()

   novorotulo = calculaNovoRotulo(pesoA,pesoB,pesoC, frequencia)
   fprintf("o novo rotulo %d\n\n" , novorotulo)
   #input('press return to continue');
   base = [base;objetos]
   rotulos=[rotulos;novorotulo]
   #plot(base(:,1),base(:,2),'bo', objetos(:,1),objetos(:,2), 'ro', base(Knear,1), base(Knear,2), 'go' );
   
   
endfunction
