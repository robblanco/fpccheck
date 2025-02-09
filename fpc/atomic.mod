%TODO Unlikely that we can mix catch-alls with the open world
%NOTE Maybe induction (and *S) are allowed to do too much...
%NOTE Will we will ever want to freeze when trying simple induction?

module atomic.

ffClerk (induction _ _ _ _ _).
ffClerk (inductionS _ _ _ _ _ _).
ffClerk (apply _ _ _ _ _).
ffClerk search.

ttClerk (induction N A S B T) (induction N A S B T).
ttClerk (inductionS N A S B T I) (inductionS N A S B T I).
ttClerk (apply N A S B T) (apply N A S B T).
ttClerk search search.

andClerk (induction N A S B T) (induction N A S B T).
andClerk (inductionS N A S B T I) (inductionS N A S B T I).
andClerk (apply N A S B T) (apply N A S B T).
andClerk search search.

orClerk (induction N A S B T) (induction N A S B T) (induction N A S B T).
orClerk (inductionS N A S B T I) (inductionS N A S B T I) (inductionS N A S B T I).
orClerk (apply N A S B T) (apply N A S B T) (apply N A S B T).
orClerk search search search.

impClerk (induction N A S B T) (induction N A S B T).
impClerk (inductionS N A S B T I) (inductionS N A S B T I).
impClerk (apply N A S B T) (apply N A S B T).
impClerk search search.

eqClerk (induction N A S B T) (induction N A S B T).
eqClerk (inductionS N A S B T I) (inductionS N A S B T I).
eqClerk (apply N A S B T) (apply N A S B T).
eqClerk search search.

ttExpert (induction _ _ _ _ _).
ttExpert (inductionS _ _ _ _ _ _).
ttExpert (apply _ _ _ _ _).
ttExpert search.

andExpert (induction N A S B T) (induction N A S B T) (induction N A S B T).
andExpert (inductionS N A S B T I) (inductionS N A S B T I) (inductionS N A S B T I).
andExpert (apply N A S B T) (apply N A S B T) (apply N A S B T).
andExpert search search search.

orExpert (induction N A S B T) (induction N A S B T) left.
orExpert (induction N A S B T) (induction N A S B T) right.
orExpert (inductionS N A S B T I) (inductionS N A S B T I) left.
orExpert (inductionS N A S B T I) (inductionS N A S B T I) right.
orExpert (apply N A S B T) (apply N A S B T) left.
orExpert (apply N A S B T) (apply N A S B T) right.
orExpert search search left.
orExpert search search right.

%impExpert

impExpert' (induction N A S B T) (induction N A S B T) (induction N A S B T).
impExpert' (inductionS N A S B T I) (inductionS N A S B T I) (inductionS N A S B T I).
impExpert' (apply N A S B T) (apply N A S B T) (apply N A S B T).
impExpert' search search search.

eqExpert (induction _ _ _ _ _).
eqExpert (inductionS _ _ _ _ _ _).
eqExpert (apply _ _ _ _ _).
eqExpert search.

allClerk (induction N A S B T) (x\ induction N A S B T).
allClerk (inductionS N A S B T I) (x\ inductionS N A S B T I).
allClerk (apply N A S B T) (x\ apply N A S B T).
allClerk search (x\ search).

someClerk (induction N A S B T) (x\ induction N A S B T).
someClerk (inductionS N A S B T I) (x\ inductionS N A S B T I).
someClerk (apply N A S B T) (x\ apply N A S B T).
someClerk search (x\ search).

allExpert (induction N A S B T) (induction N A S B T) _.
allExpert (inductionS N A S B T I) (inductionS N A S B T I) _.
allExpert (apply N A S B T) (apply N A S B T) _.
allExpert search search _.

someExpert (induction N A S B T) (induction N A S B T) _.
someExpert (inductionS N A S B T I) (inductionS N A S B T I) _.
someExpert (apply N A S B T) (apply N A S B T) _.
someExpert search search _.

indClerk (inductionS N A S B T I) (apply N A S B T) (x\ apply N A S B T) I.

indClerk' (induction N A S B T) (x\ apply N A S B T).

coindClerk (inductionS N A S B T I) (apply N A S B T) (x\ apply N A S B T) I.

coindClerk' (induction N A S B T) (x\ apply N A S B T).

unfoldLClerk (apply N A S (ss B) T) (apply N A S B T).

unfoldRExpert (apply N A S B (ss T)) (apply N A S B T).

unfoldLExpert (apply N A S B (ss T)) (apply N A S B T).

unfoldRClerk (apply N A S (ss B) T) (apply N A S B T).

freezeLClerk (induction N A S B T) (induction N A S B T) idxatom.
freezeLClerk (inductionS N A S B T I) (inductionS N A S B T I) idxatom.
freezeLClerk (apply N A S B T) (apply N A S B T) idxatom.
freezeLClerk search search idxatom.

initRExpert (induction _ _ _ _ _) idxatom.
initRExpert (inductionS _ _ _ _ _ _) idxatom.
initRExpert (apply _ _ _ _ _) idxatom.
initRExpert search idxatom.

freezeRClerk (induction N A S B T) (induction N A S B T).
freezeRClerk (inductionS N A S B T I) (inductionS N A S B T I).
freezeRClerk (apply N A S B T) (apply N A S B T).
freezeRClerk search search.

initLExpert (induction _ _ _ _ _).
initLExpert (inductionS _ _ _ _ _ _).
initLExpert (apply _ _ _ _ _).
initLExpert search.

storeLClerk (induction N A S B T) (induction N A S B T) idxlocal.
storeLClerk (inductionS N A S B T I) (inductionS N A S B T I) idxlocal.
storeLClerk (apply N A S B T) (apply N A S B T) idxlocal.
storeLClerk search search idxlocal.

decideLClerk (apply N A S B T) (apply N A S B T) idxlocal.

decideLClerk' (apply N A S B T) (apply N A S B T) _.

storeRClerk (induction N A S B T) (induction N A S B T).
storeRClerk (inductionS N A S B T I) (inductionS N A S B T I).
storeRClerk (apply N A S B T) (apply N A S B T).
storeRClerk search search.

decideRClerk (apply N A S B T) (apply N A S B T).
decideRClerk search search.

releaseLExpert (apply (ss N) A S _ _) (apply N A S A S).
releaseLExpert (apply zz _ _ _ _) search.

releaseRExpert (apply (ss N) A S _ _) (apply N A S A S).
releaseRExpert (apply zz _ _ _ _) search.

end
