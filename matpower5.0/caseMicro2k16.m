function mpc = caseMicro2k16
%CASE9    Power flow data for 9 bus, 3 generator case.
%   Please see CASEFORMAT for details on the case file format.
%
%   Based on data from Joe H. Chow's book, p. 70.

%   MATPOWER
%   $Id: case9.m 2408 2014-10-22 20:41:33Z ray $

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 4;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	101	1	0	0	0	0	1	1	0	13.8	1	1.1	0.9
102	1	0	0	0	0	1	1	0	13.8	1	1.1	0.9
103	2	0	0	0	0	1	1	0	13.8	1	1.1	0.9
104	1	0.96	0.72	0	0	1	1	0	0.48	1	1.1	0.9
105	1	0	0	0	0	1	1	0	13.8	1	1.1	0.9
106	1	0	0	0	0	1	1	0	4.16	1	1.1	0.9
107	1	0.9712	0.728	0	0	1	1	0	0.48	1	1.1	0.9
1012	1	2.4	1.8	0	0	1	1	0	0.48	1	1.1	0.9
1031	1	0	0	0	0	1	1	0	13.8	1	1.1	0.9
1052	1	1.2	0.9	0	0	1	1	0	0.48	1	1.1	0.9
1062	1	0.2	0.15	0	0	1	1	0	0.208	1	1.1	0.9
1071	1	0	0	0	0	1	1	0	13.8	1	1.1	0.9
1072	1	0	0	0	0	1	1	0	0.48	1	1.1	0.9
201	1	0	0	0	0	2	1	0	13.8	1	1.1	0.9
202	1	-1.6	-1.2	0	0	2	1	0	0.48	1	1.1	0.9 %Battery + Local load
203	1	0	0	0	0	2	1	0	13.8	1	1.1	0.9
204	1	0	0	0	0	2	1	0	13.8	1	1.1	0.9
205	1	0	0	0	0	2	1	0	4.16	1	1.1	0.9
206	1	0	0	0	0	2	1	0	0.48	1	1.1	0.9
207	1	0	0	0	0	2	1	0	0.48	1	1.1	0.9
208	1	0	0	0	0	2	1	0	13.8	1	1.1	0.9
209	1	0.8	0.6	0	0	2	1	0	0.48	1	1.1	0.9
210	1	0.56	0.42	0	0	2	1	0	0.48	1	1.1	0.9
2022	1	0.24	0.18	0	0	2	1	0	0.208	1	1.1	0.9
2042	1	0.48	0.36	0	0	2	1	0	0.48	1	1.1	0.9
2052	1	0.8	0.6	0	0	2	1	0	0.48	1	1.1	0.9
2071	1	-4	-3	0	0	2	1	0	0.48	1	1.1	0.9 %Solar PV
301	1	0	0	0	0	3	1	0	13.8	1	1.1	0.9
302	1	0	0	0	0	3	1	0	13.8	1	1.1	0.9
303	1	0.8	0.6	0	0	3	1	0	0.48	1	1.1	0.9
304	1	0.48	0.36	0	0	3	1	0	13.8	1	1.1	0.9
305	1	0.48	0.36	0	0	3	1	0	0.48	1	1.1	0.9
306	2	0	0	0	0	3	1	0	13.8	1	1.1	0.9
307	1	0.9712	0.728	0	0	3	1	0	0.48	1	1.1	0.9
3031	1	0	0	0	0	3	1	0	13.8	1	1.1	0.9
3042	1	0.64	0.48	0	0	3	1	0	0.48	1	1.1	0.9
3051	1	0	0	0	0	3	1	0	13.8	1	1.1	0.9
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
103	0	0	4	-4	1	4	1	4	0	0	0	0	0	0	0	0	0	0	0	0
306	3.5	0	3.5	-3.5	1	4	1	3.5	0	0	0	0	0	0	0	0	0	0	0	0
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
101	102	0.001111531	0.001761815	0.000291365	250	250	250	0	0	1	-360	360
101	105	0.003396345	0.005383323	0.000890283	250	250	250	0	0	1	-360	360
101	103	0.006742281	0.001327452	0.000119353	250	250	250	0	0	1	-360	360
101	1071	0.001143025	0.001811733	0.000299621	250	250	250	0	0	1	-360	360
1072	307	1.020833333	1.618055556	3.91669E-07	250	250	250	0	0	1	-360	360
105	204	0.001852552	0.002936358	0.000485609	250	250	250	0	0	1	-360	360
105	106	0.000926276	0.001468179	0.000242804	250	250	250	0	0	1	-360	360
106	205	0.006795488	0.01077108	1.47094E-05	250	250	250	0	0	1	-360	360
104	206	0.255208333	0.404513889	9.79173E-08	250	250	250	0	0	1	-360	360
201	204	0.037082546	0.007300987	0.000656443	250	250	250	0	0	1	-360	360
201	203	0.001235035	0.001957572	0.000323739	250	250	250	0	0	1	-360	360
201	208	0.001852552	0.002936358	0.000485609	250	250	250	0	0	1	-360	360
210	303	0.3828125	0.606770833	1.46876E-07	250	250	250	0	0	1	-360	360
209	304	0.3828125	0.606770833	1.46876E-07	250	250	250	0	0	1	-360	360
207	305	0.3828125	0.606770833	1.46876E-07	250	250	250	0	0	1	-360	360
301	302	0.001543793	0.002446965	0.000404674	250	250	250	0	0	1	-360	360
301	306	0.013484562	0.002654904	0.000238706	250	250	250	0	0	1	-360	360
301	3051	0.001235035	0.001957572	0.000323739	250	250	250	0	0	1	-360	360
301	3031	0.005056711	0.000995589	8.95149E-05	250	250	250	0	0	1	-360	360
102	1012	0.319936019	1.567686494	0	250	250	250	0	0	1	-360	360
102	104	0.05512838	0.363847306	0	250	250	250	0	0	1	-360	360
1031	106	0.017709773	0.201891411	0	250	250	250	0	0	1	-360	360
106	107	0.095729516	0.449928727	0	250	250	250	0	0	1	-360	360
106	1052	0.095729516	0.449928727	0	250	250	250	0	0	1	-360	360
105	1062	0.319936019	1.567686494	0	250	250	250	0	0	1	-360	360
1071	1072	0.05512838	0.363847306	0	250	250	250	0	0	1	-360	360
202	204	0.05512838	0.363847306	0	250	250	250	0	0	1	-360	360
204	2022	0.319936019	1.567686494	0	250	250	250	0	0	1	-360	360
204	205	0.017709773	0.201891411	0	250	250	250	0	0	1	-360	360
205	2042	0.212611794	0.895095651	0	250	250	250	0	0	1	-360	360
205	2052	0.119366221	0.601605754	0	250	250	250	0	0	1	-360	360
203	206	0.05512838	0.363847306	0	250	250	250	0	0	1	-360	360
2071	203	0.031993602	0.156768649	0	250	250	250	0	0	1	-360	360
208	209	0.095729516	0.449928727	0	250	250	250	0	0	1	-360	360
208	210	0.095729516	0.449928727	0	250	250	250	0	0	1	-360	360
203	207	0.212611794	0.895095651	0	250	250	250	0	0	1	-360	360
302	303	0.095729516	0.449928727	0	250	250	250	0	0	1	-360	360
302	304	0.095729516	0.449928727	0	250	250	250	0	0	1	-360	360
3031	305	0.212611794	0.895095651	0	250	250	250	0	0	1	-360	360
306	3042	0.212611794	0.895095651	0	250	250	250	0	0	1	-360	360
3051	307	0.05512838	0.363847306	0	250	250	250	0	0	1	-360	360
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	2000	0	3	0.11	5	150;
	2	2000	0	3	0.085	5	150;
];
