function experimentalPi = fastSimulation(N)

    in = 0;

    for i=1:N
        x = rand();
        y = rand();
        if(x^2 +  y^2 < 1)
            in++;
        end;
    end;

    experimentalPi = 4 * in / N;

end