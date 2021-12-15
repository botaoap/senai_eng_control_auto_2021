
function S = loop_while()
S = 0;
i = 1;
V = [1 2 3];
while i <= length(V) 
    S = S+V(i);
    i = i+1; 
end%Nesteponto,S=sum(V)

end