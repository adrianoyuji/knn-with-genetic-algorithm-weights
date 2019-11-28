#comandos para limpar buffer do Octave
clear
clc

#funcao criaObjetos gera aleatoriamente 3 grupos de objetos
[X,rotulos] = criaObjetos();
Objetos = X;

#para esta demonstração atribuiremos 3 para K
K = 3;

#plot dos objetos gerados pela funcao criaObjetos()
plot(Objetos(:,1),Objetos(:,2),'ko')
input('press return to continue');

#algoritmo kmeans em execucao
max_iterations = 10;
centroids = initCentroids(X, K);

for i=1:max_iterations
  indices = getClosestCentroids(X, centroids);
  centroids = computeCentroids(X, indices, K);
end
#fim algoritmo k-means

#chama funcao para tratar e plotar os dados
[obja,objb,objc]=trataEplota(indices,X)
input('press return to continue');

#cria uma nova instacia para ser classificada
novoObj = rand(8,2)
plot(obja(:,1),obja(:,2),'rv',objb(:,1),objb(:,2),'g^',objc(:,1),objc(:,2),'b*',novoObj(:,1),novoObj(:,2),'ko')
input('press return to continue');

#alteramos o K para melhor precisão na hora de aplicar o algoritmo KNN
K=7 

#mc=matrizConfusao(X,novoObj,indices)

#executa knn
for i=1: 8
  objeto=novoObj(i, :)
  [X,indices]=KNN(X,indices,objeto,K)

endfor

[obja,objb,objc]=trataEplota(indices,X)
  
 
  
  