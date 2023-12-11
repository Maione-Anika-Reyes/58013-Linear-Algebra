syms x y z;
eq1 = x + y + z == 89;
eq2 = x == z - 6;
eq3 = y == 3 * z;
[a,b] = equationsToMatrix([eq1, eq2, eq3], [x, y, z]);
c = linsolve(a,b);
disp(c)

