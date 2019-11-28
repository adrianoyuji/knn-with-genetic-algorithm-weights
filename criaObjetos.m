function [d,rotulos] = criaObjetos()
    rotulos = []
    h = rand(3,2)
    a(:,1) = h(1,1) + ((h(1,1)+0.3)-h(1,1))*rand(30,1);
    a(:,2) = h(1,2) + ((h(1,2)+0.3)-h(1,2))*rand(30,1);
    for i=1:rows(a)
      aux(i,1)= 1
    endfor
    rotulos = [rotulos;aux]
    b(:,1) = h(2,1) + ((h(2,1)+0.3)-h(2,1))*rand(30,1);
    b(:,2) = h(2,2) + ((h(2,2)+0.3)-h(2,2))*rand(30,1);
    for i=1:rows(b)
      aux(i,1) = 2
    endfor
    rotulos = [rotulos;aux]
    c(:,1) = h(3,1) + ((h(3,1)+0.3)-h(3,1))*rand(30,1);
    c(:,2) = h(3,2) + ((h(3,2)+0.3)-h(3,2))*rand(30,1);
    for i=1:rows(c)
      aux(i,1) = 3
    endfor
    rotulos = [rotulos;aux]
    
    d = a
    d = [d;b]
    d = [d;c]

endfunction
