function [novoRotulo] = calculaNovoRotulo(pesoA,pesoB,pesoC, frequencia)
  valor = [0;0;0]
  disp(frequencia)

  valor(1,1) = frequencia(1,1)/pesoA
  valor(2,1) = frequencia(2,1)/pesoB
  valor(3,1) = frequencia(3,1)/pesoC
  disp(valor)

  if(valor(1,1) > valor(2,1) && valor(1,1) > valor(3,1))
    novoRotulo = 1;
  endif
  if(valor(2,1) > valor(1,1) && valor(2,1) > valor(3,1))
    novoRotulo = 2;
  endif
  if(valor(3,1) > valor(2,1) && valor(3,1) > valor(1,1))
    novoRotulo = 3;
  endif
  
endfunction
