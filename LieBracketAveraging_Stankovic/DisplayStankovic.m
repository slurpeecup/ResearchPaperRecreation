% DisplayStankovic.m
%  An invoker script that displays the plots of the simulations done in
% 'A Lie Bracket Approximation for Extremum Seeking Vehicles'
%  by Hans-Bernd Durr, Milos S. Stankovic, and Karl Henrik Johansson

%  Cost function partial derivatives have been hardcoded

simWS = get_param("StankovicLieBracket1",'ModelWorkspace');

simWS.assignin('omega', 10);
runset1 = sim("StankovicLieBracket1");

subplot(2,2,1);
x1_1 = runset1.x1out.signals.values(:);
x2_1 = runset1.x2out.signals.values(:);
plot(x1_1,x2_1);
hold on;
x1Lie = runset1.x1outLie.signals.values(:);
x2Lie = runset1.x2outLie.signals.values(:);
plot(x1Lie,x2Lie, LineWidth=2,LineStyle="-.");
hold off;
title("\omega = 10, Single Integrator")

subplot(2,2,2);
x1_2 = runset1.x1out1.signals.values(:);
x2_2 = runset1.x2out1.signals.values(:);
plot(x1_2, x2_2);
hold on;
x1Lie = runset1.x1out1Lie.signals.values(:);
x2Lie = runset1.x2out1Lie.signals.values(:);
plot(x1Lie,x2Lie, LineWidth=2,LineStyle="-.");
hold off;
title("\omega = 10, Non-Holonomic")

simWS.assignin('omega', 50);
runset2 = sim("StankovicLieBracket1");

subplot(2,2,3);
x1_3 = runset2.x1out.signals.values(:);
x2_3 = runset2.x2out.signals.values(:);
plot(x1_3,x2_3);
hold on;
x1Lie = runset2.x1outLie.signals.values(:);
x2Lie = runset2.x2outLie.signals.values(:);
plot(x1Lie,x2Lie,LineWidth=2,LineStyle="-.");
hold off;
title("\omega = 50, Single-Integrator")

subplot(2,2,4);
x1_4 = runset2.x1out1.signals.values(:);
x2_4 = runset2.x2out1.signals.values(:);
plot(x1_4, x2_4);
hold on;
x1Lie = runset2.x1out1Lie.signals.values(:);
x2Lie = runset2.x2out1Lie.signals.values(:);
plot(x1Lie,x2Lie,LineWidth=2,LineStyle="-.");
hold off;
title("\omega = 50, Non-Holonomic")
