function mpc = caseMicro2k16ReorderClose
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
1	1	0	0	0	0	1	1.016803062	-0.052774883	13.8	1	1.1	0.9    
2	1	0	0	0	0	1	1.016803062	-0.052774883	13.8	1	1.1	0.9
3	1	0	0	0	0	1	1.016296755	-0.080345611	13.8	1	1.1	0.9
4	3	0	0	0	0	1	1.018019809	-0.08472918	13.8	1	1.1	0.9
5	1	1.10069012	0.196735405	0	0	1	1.019999367	-5.265254406	0.5	1	1.1	0.9
6	1	0	0	0	0	1	1.01118804	-0.156655593	13.8	1	1.1	0.9
7	1	0	0	0	0	1	1.019996769	-6.46927023	4.2	1	1.1	0.9
8	1	1.104867599	0.655988108	0	0	1	1.019996722	-11.90696749	0.5	1	1.1	0.9
9	1	0	0	0	0	1	1.01798579	0.044714429	13.8	1	1.1	0.9
10	1	-1.521632018	-0.002403558	0	0	1	0.981274357	2.828389594	0.5	1	1.1	0.9
11	1	0	0	0	0	1	1.018250737	0.135169517	13.8	1	1.1	0.9
12	1	0	0	0	0	1	1.00922763	0.322757371	13.8	1	1.1	0.9
13	1	0	0	0	0	1	1.01999628	-2.441765535	4.2	1	1.1	0.9
14	1	0.918957872	0.379095741	0	0	1	1.019999367	-3.98621156	0.5	1	1.1	0.9
15	1	0.302350104	0.145650322	0	0	2	1.019991188	-3.013851407	0.5	1	1.1	0.9
16	1	0	0	0	0	2	1.017165654	-0.000799132	13.8	1	1.1	0.9
17	1	0.878367982	0.097596442	0	0	2	1.019999367	-5.140788821	0.5	1	1.1	0.9
18	1	0.413603751	0.10616684	0	0	2	1.019999367	-2.371743177	0.5	1	1.1	0.9
19	1	0	0	0	0	2	1.017675833	-0.03608944	13.8	1	1.1	0.9
20	1	0	0	0	0	2	1.016961182	-0.070805347	13.8	1	1.1	0.9
21	1	0.852576102	0.155253902	0	0	2	1.019999367	-4.957227516	0.5	1	1.1	0.9
22	1	0.395403835	0.132597943	0	0	2	1.019999367	-2.292144016	13.8	1	1.1	0.9
23	1	0.415807388	0.198677957	0	0	2	1.019991188	-4.286465625	0.5	1	1.1	0.9
24	2	0	0	0	0	2	1.018444052	0.005145115	13.8	1	1.1	0.9
25	1	0.762113902	0.280105466	0	0	2	1.019999367	-3.531452648	0.5	1	1.1	0.9
26	1	0.213892441	0.003316495	0	0	2	1.019999367	-4.592840037	0.5	1	1.1	0.9
27	1	0	0	0	0	2	1.009703106	-0.181625631	13.8	1	1.1	0.9
28	1	1.461067761	0.738232531	0	0	2	1.019991188	-13.68564224	0.5	1	1.1	0.9
29	1	0.178243701	0.002763746	0	0	2	1.019991187	-3.930390205	0.2	1	1.1	0.9
30	1	0	0	0	0	3	1	0	13.8	1	1.1	0.9
31	1	0	0	0	0	3	1	0	0.5	1	1.1	0.9
32	1	0.213892441	0.003316495	0	0	3	1.019999367	-4.189736867	0.2	1	1.1	0.9
33	1	0.287543726	0.105181866	0	0	3	1.019999367	-5.557895093	0.5	1	1.1	0.9
34	1	0.767428462	0.362241637	0	0	3	1.019991188	-7.788459173	0.5	1	1.1	0.9
35	1	-4	-0.1	0	0	3	0.980000633	8.590814062	0.5	1	1.1	0.9
36	1	0	0	0	0	3	1.017085774	-0.024881992	13.8	1	1.1	0.9
37	1	0.682060882	0.124203122	0	0	3	1.019999367	-7.526534683	0.5	1	1.1	0.9
38	1	0	0	0	0	3	1.017279692	-0.051207633	13.8	1	1.1	0.9
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
4	3.999	3.997196	4	-4	1.014449749	4	1	4	0	0	0	0	0	0	0	0	0	0	0	0
24	2.131828	2.563228	3.5	-3.5	1.006714603	4	1	3.5	0	0	0	0	0	0	0	0	0	0	0	0
% 1	2.131828	2.563228	3.5	-3.5	1.006714603	4	0	3.5	0	0	0	0	0	0	0	0	0	0	0	0
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
1	2	0.001111531	0.001761815	0.000291365	250	250	250	0	0	0	-360	360
1	9	0.001111531	0.001761815	0.000291365	250	250	250	0	0	0	-360	360
1	19	0.001111531	0.001761815	0.000291365	250	250	250	0	0	1	-360	360
2	3	0.001111531	0.001761815	0.000291365	250	250	250	0	0	1	-360	360
2	6	0.003396345	0.005383323	0.000890283	250	250	250	0	0	1	-360	360
2	4	0.006742281	0.001327452	0.000119353	250	250	250	0	0	1	-360	360
2	30	0.001143025	0.001811733	0.000299621	250	250	250	0	0	1	-360	360
31	25	1.020833333	1.618055556	3.91669E-07	250	250	250	0	0	1	-360	360
6	12	0.001852552	0.002936358	0.000485609	250	250	250	0	0	1	-360	360
6	27	0.000926276	0.001468179	0.000242804	250	250	250	0	0	1	-360	360
7	13	0.006795488	0.01077108	1.47094E-05	250	250	250	0	0	1	-360	360
5	14	0.255208333	0.404513889	9.79173E-08	250	250	250	0	0	1	-360	360
9	12	0.037082546	0.007300987	0.000656443	250	250	250	0	0	1	-360	360
9	11	0.001235035	0.001957572	0.000323739	250	250	250	0	0	1	-360	360
9	16	0.001852552	0.002936358	0.000485609	250	250	250	0	0	1	-360	360
18	21	0.3828125	0.606770833	1.46876E-07	250	250	250	0	0	1	-360	360
17	22	0.3828125	0.606770833	1.46876E-07	250	250	250	0	0	1	-360	360
15	23	0.3828125	0.606770833	1.46876E-07	250	250	250	0	0	1	-360	360
19	20	0.001543793	0.002446965	0.000404674	250	250	250	0	0	1	-360	360
19	24	0.013484562	0.002654904	0.000238706	250	250	250	0	0	1	-360	360
19	38	0.001235035	0.001957572	0.000323739	250	250	250	0	0	1	-360	360
19	36	0.005056711	0.000995589	8.95149E-05	250	250	250	0	0	1	-360	360
3	26	0.319936019	1.567686494	0	250	250	250	0	0	1	-360	360
3	5	0.05512838	0.363847306	0	250	250	250	0	0	1	-360	360
27	7	0.017709773	0.201891411	0	250	250	250	0	0	1	-360	360
7	8	0.095729516	0.449928727	0	250	250	250	0	0	1	-360	360
7	28	0.095729516	0.449928727	0	250	250	250	0	0	1	-360	360
6	29	0.319936019	1.567686494	0	250	250	250	0	0	1	-360	360
30	31	0.05512838	0.363847306	0	250	250	250	0	0	1	-360	360
10	12	0.05512838	0.363847306	0	250	250	250	0	0	1	-360	360
12	32	0.319936019	1.567686494	0	250	250	250	0	0	1	-360	360
12	13	0.017709773	0.201891411	0	250	250	250	0	0	1	-360	360
13	33	0.212611794	0.895095651	0	250	250	250	0	0	1	-360	360
13	34	0.119366221	0.601605754	0	250	250	250	0	0	1	-360	360
11	14	0.05512838	0.363847306	0	250	250	250	0	0	1	-360	360
11	35	0.031993602	0.156768649	0	250	250	250	0	0	1	-360	360
16	17	0.095729516	0.449928727	0	250	250	250	0	0	1	-360	360
16	18	0.095729516	0.449928727	0	250	250	250	0	0	1	-360	360
11	15	0.212611794	0.895095651	0	250	250	250	0	0	1	-360	360
20	21	0.095729516	0.449928727	0	250	250	250	0	0	1	-360	360
20	22	0.095729516	0.449928727	0	250	250	250	0	0	1	-360	360
36	23	0.212611794	0.895095651	0	250	250	250	0	0	1	-360	360
24	37	0.212611794	0.895095651	0	250	250	250	0	0	1	-360	360
38	25	0.05512838	0.363847306	0	250	250	250	0	0	1	-360	360
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
2	2000	0	3	0.11	5	150;
2	2000	0	3	0.085	5	150;
];
