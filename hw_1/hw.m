v = 100;
w = 60 * 2 * pi;
R = 100;
C = 10e-6;
L = 10e-3:10e-3:1;

current = v ./ (sqrt(R^2 + ((w*L) - (1/(w*C))).^2));
xL = w .* L;
xC = 1 / (w*C);
vL = abs(current .* (i*w*L));
vC = abs(current * (i*(1/(w*C))));
vR = abs(current * R);
 
figure(1);
plot(L,current);
title("Current Magnitude vs Variable Inductance");
xlabel("Inductance (H)");
ylabel("Current Magnitude (A)");


figure(2);
semilogy(L,xL);
hold on 
yline(xC);
hold off
title("Component Reactance Magnitude vs Variable Inductance");
xlabel("Inductance (H)");
ylabel("Component Reactance Magnitude (Ohms)");
legend("xL", "xC");

figure(3);
hold on 
semilogx(L,vL);
hold on 
semilogx(L,vC);
hold on
semilogx(L, vR);
hold off
legend ("vL", "vC", "vR");
title("Component Voltage Magnitude vs Variable Inductance");
xlabel("Inductance (H)");
ylabel("Component Voltage Magnitude (V)");


C = 1e-6:(1e-6 * 5): 100e-6;
L = 100e-3;

current = v ./ (sqrt(R^2 + ((w*L) - (1./(w*C))).^2));
xL = w * L;
xC = 1 ./ (w*C);
vL = abs(current * (i*w*L));
vC = abs(current .* (i*(1./(w*C))));
vR = abs(current * R);

figure(4);
plot(C,current);
title("Current Magnitude vs Variable Capacitance");
xlabel("Capacitance (F)");
ylabel("Current Magnitude (A)");


figure(5);
yline(xL);
hold on 
semilogy(C,xC);
hold off
title("Component Reactance Magnitude vs Variable Capacitance");
xlabel("Capacitance (F)");
ylabel("Component Reactance Magnitude (Ohms)");
legend("xL", "xC");

figure(6);
hold on 
semilogx(C,vL);
hold on 
semilogx(C,vC);
hold on
semilogx(C, vR);
hold off
legend ("vL", "vC", "vR");
title("Component Voltage Magnitude vs Variable Capacitance");
xlabel("Capacitance (F)");
ylabel("Component Voltage Magnitude (V)");

