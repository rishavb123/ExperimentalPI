function [pis, times, theta] = convergencePlot(Ns = 1:100)
    pis = zeros(size(Ns, 2), 1);
    times = zeros(size(Ns, 2), 1);

    for i=1:size(Ns, 2)
        [totalTime, experimentalPi] = simulationTimer(Ns(i));
        pis(i) = experimentalPi;
        times(i) = totalTime;
    end;

    iterations = 1000;
    alpha = 0.000001;
    [theta, J_history] = linearRegression(Ns', times, alpha, iterations);
    ys = zeros(1, size(Ns, 2));
    for i=1:size(Ns, 2)
        ys(i) = linearFunction(Ns(i), theta);
    end;

    figure;
    plot(1:iterations, J_history);
    xlabel('Number of Iterations of Linear Regression');
    ylabel('Cost Function');

    figure;
    plot(Ns, pis, Ns, ones(1, size(Ns, 2)) * pi, Ns, ones(1, size(Ns, 2)) * mean(pis));
    legend('Experimental Pis', 'Actual Pi', 'Average Experimental Pi');
    xlabel('Number of Iterations');
    ylabel('Experimental Pi');

    figure;
    plot(Ns, times, Ns, ones(1, size(Ns, 2)) * mean(times), Ns, ys);
    legend('Simulation Time', 'Average Simulation Time', 'Best Fit Line');
    xlabel('Number of Iterations');
    ylabel('Simulation Time');

end;

convergencePlot();