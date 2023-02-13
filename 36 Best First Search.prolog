bfs(Dests, [[Target,Path,Cost]|_], Target, Path, Cost):- member(Target, Dests).
bfs(Dests, [[N,P,C]|Queue], Target, Path, Cost):-
  setof([Child,Pp,Cp], child(N, P, C, Child, Pp, Cp), Children),
  append(Queue, Children, NextQueue),
  bfs(Dests, NextQueue, Target, Path, Cost).
child(N0, P0, C0, N, P, C):-
  arc(N0, N, Len),
  append(P0, [N], P),
  C is C0 + Len.
% Picks only the shortest path to the closest destination.
shortest(A,Dests, Target,Path,Cost):- bfs(Dests, [[A,[A],0]], Target,Path,Cost), !.
