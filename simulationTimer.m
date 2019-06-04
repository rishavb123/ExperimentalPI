function [totalTime, experimentalPi] = simulationTimer (N)

    startTime = time()
    % ------------------- CODE TO TIME HERE -----------------------------

    experimentalPi = fastSimulation(N);

    % -------------------------------------------------------------------

    totalTime = time() - startTime;

end;