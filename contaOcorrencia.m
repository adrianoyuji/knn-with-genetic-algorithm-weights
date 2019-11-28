function [total] = contaOcorrencia(vetor,rotulos,classe)
  [lines,columns] = size(vetor)
  total = 0

  for i=1:columns
    if(rotulos(vetor(i),:)==classe)
     total = total + 1
    endif
  endfor
endfunction
