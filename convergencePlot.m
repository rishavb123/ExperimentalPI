function [pis, times] = convergencePlot(Ns = 1:100)
    pis = zeros(1, size(Ns, 2));
    times = zeros(1, size(Ns, 2));

    for i=1:size(Ns, 2)
        [totalTime, experimentalPi] = simulationTimer(Ns(i));
        pis(i) = experimentalPi;
        times(i) = totalTime;
    end;

    figure;
    plot(Ns, pis, Ns, ones(1, size(Ns, 2)) * pi, Ns, ones(1, size(Ns, 2)) * mean(pis));
    legend('Experimental Pis', 'Actual Pi', 'Average Experimental Pi');
    xlabel('Number of Iterations');
    ylabel('Experimental Pi');

    figure;
    plot(Ns, times, Ns, ones(1, size(Ns, 2)) * mean(times));
    legend('Simulation Time', 'Average Simulation Time');
    xlabel('Number of Iterations');
    ylabel('Simulation Time');

end;

convergencePlot();