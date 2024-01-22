%%
t = linspace(0, 20, 1000);
s = sin(2 * pi * t);

plot(t, s, "r")
title("Grafica de s(t) = sin(2 \pi t)")

xlim([0, 5])
ylabel("Voltaje")
xlabel("Tiempo (s)")

