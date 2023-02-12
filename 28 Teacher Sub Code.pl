takes(irfan, uba201).
takes(chris_marvin, csa245).
takes(devandran, art302).
takes(mani_maran, csa254).
classmates(X, Y) :- takes(X, Z), takes(Y, Z).
