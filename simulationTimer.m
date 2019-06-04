function [totalTime, experimentalPi] = simulationTimer (N)

    t = time();
    experimentalPi = fastSimulation(N);
    totalTime = time() - t;

end;