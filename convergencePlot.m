function [pis] = convergencePlot(Ns = 1:100)
    pis = zeros(1, size(Ns, 2));

    for i=1:size(Ns, 2)
        [experimentalPi, xs, ys, ins] = simulation(Ns(i));
        pis(i) = experimentalPi;
    end;

    figure;
    plot(Ns, pis, Ns, ones(1, size(Ns, 2)) * pi, Ns, ones(1, size(Ns, 2)) * mean(pis));
    legend('Experimental Pis', 'Actual Pi', 'Average Experimental Pi');
    xlabel('Number of Iterations');
    ylabel('Experimental Pi');
end;

convergencePlot();