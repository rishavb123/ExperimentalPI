function [experimentalPi, xs, ys, ins] = simulation(N, plotting=0)

    in = 0;

    xs = zeros(N);
    ys = zeros(N);
    ins = zeros(N);

    for i=1:N
        xs(i) = rand();
        ys(i) = rand();
        if(xs(i)^2 +  ys(i)^2 < 1)
            ins(i) = 1;
            in++;
        end;
    end;

    if plotting
        figure;
        circleX = 0:0.001:1;
        circleY = sqrt(1 - circleX .^ 2); 
        scatter(xs, ys);
        hold on;
        plot(circleX, circleY);
        legend('Randomly Generated Points', 'Circle');
        xlabel('X');
        ylabel('Y');
    end;

    experimentalPi = 4 * in / N;

end