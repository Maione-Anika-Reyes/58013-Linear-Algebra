syms x y;
eq1 = 20*x + 10*y == 350;
eq2 = 17*x + 22*y == 500;
[A,B] = equationsToMatrix([eq1,eq2],[x,y]);
c = linsolve(A,B);
disp('An appple costs:')
disp(c(1))
disp('An orange costs:')
disp(c(2))

solution = solve([eq1, eq2], [x, y]);
figure;
ezplot(eq1, [-10, 30, -10, 30]);
hold on;
ezplot(eq2, [-10, 30, -10, 30]);

scatter(solution.x, solution.y, 100, 'r', 'filled');

title('Linear Applicaiton');
xlabel('x-axis');
ylabel('y-axis');
grid on;
legend('20*x + 10*y = 350', '17*x + 22*y = 500', 'Solution');

hold off;

