function [a,b,c] = trataEplota(indices,X)
  [lines,columns] = size(X)
  a=[]
  b=[]
  c=[]

  for i=1:lines
    if(indices(i)==1)
      a = [a;X(i,:)]
    endif
    if(indices(i)==2)
      b = [b;X(i,:)]
    endif
    if(indices(i)==3)
      c = [c;X(i,:)]
    endif
  endfor

  plot(a(:,1),a(:,2),'rv',b(:,1),b(:,2),'g^',c(:,1),c(:,2),'b*')
  
  
  
endfunction
