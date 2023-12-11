a = [8 5 -6; -12 -9 12; -3 -3 5];
disp(a);
[ev,dv]=eig(a)
p = a*ev(:,1)
q = -1*ev(:,1)
r = a*ev(:,2)
s = 3*ev(:,2)
t = a*ev(:,3)
u = 2*ev(:,3)