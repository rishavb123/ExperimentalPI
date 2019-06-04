function [totalTime, experimentalPi] = simulationTimer (N)

    t = time();
    % ------------------- CODE TO TIME HERE -----------------------------

    experimentalPi = fastSimulation(N);

    % -------------------------------------------------------------------

    totalTime = time() - t;

end;