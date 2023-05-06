%Pruebas para encontrar el free system y así poder analizar el
%comportamiento del modelo y encontrar si tiene puntos de equilibrio:
g_a = T_g + e_AG;
n_a = T_n + e_AN;
a_r = rc_a*(1-g_a-n_a);
a_const = -g_a-n_a+a_r;
display(a_const);
a = 1+ceil(a_const);

g_p = T_g + e_PG;
n_p = T_n + e_PN;
p_r = rc_p*(1-g_p-n_p);
p_const = -g_p-n_p+p_r;
display(p_const);
p = 1+ceil(p_const);

p_g = T_p + e_GP;
a_g = T_a + e_GA;
g_r = rc_g*(1-p_g-a_g);
g_const = -p_g-a_g+g_r;
display(g_const);
g = 1+ceil(p_const);

a_n = T_a + e_NA;
p_n = T_p + e_NP;
n_r = rc_n*(1-a_n-p_n);
n_const = -a_n-p_n+n_r;
display(n_const);
n = 1+ceil(n_const);

% Se usa ";" para separar filas y " " o "," para separar columnas.
A = [a 0 0 0 ; 0 g 0 0; 0 0 n 0; 0 0 0 p];
disp(A);