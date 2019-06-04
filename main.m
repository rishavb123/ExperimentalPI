N = 100;
[experimentalPi, xs, ys, ins] = simulation(N, 1);

printf('\nThe value of PI is %f\n', pi);
printf('The experimental value of PI is %f with %.0f iterations\n', experimentalPi, N);

[pis, times] = convergencePlot(1:N * 10);
printf('The average experimental value of PI is %f with iterations ranging from 1 to %.0f and it took %fs\n\n', mean(pis), N*10, sum(times));