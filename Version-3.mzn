% Hotels to be visited
enum Hotels;  
int : Budget;
 
array[Hotels] of int: consumption;
array[Hotels] of var 0..1: visited;


constraint forall ( p in Hotels) (     
     if consumption[p] <= Budget
     then visited[p]= 1
     else visited[p]= 0
     endif
);



% Maximize satisfaction
%solve minimize used;

output [ "\(p) = \(visited[p]);\n" | p in Hotels ];