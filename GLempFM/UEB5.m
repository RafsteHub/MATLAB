x = [67.08
85.85
62.25
63.05
85.88
100.30
69.20
67.42
81.12
91.09
89.52
79.05
65.48
84.45
73.81
95.65
53.88
77.12
94.35
67.58
65.63
61.00
70.82
71.99
77.05
61.75
76.24
65.94
69.47
62.43
70.76
128.55
126.11
92.20
86.81
55.83
66.23
65.71
83.03
82.24
76.63
69.90
61.11
75.08
92.09
81.41
77.72
84.86
83.76
50.75
75.28
68.61
44.49
55.07
70.20
87.38
71.56
78.93
61.53
42.64
76.41
60.73
92.59
101.03
69.42
92.89
89.30
53.77
74.50
78.92
82.84
85.15
85.12
85.18
70.31
80.69
41.21
57.47
93.03
65.09
79.91
97.62
61.67
60.61
67.61
81.62
71.93
60.33
51.41
69.45
71.68
66.97
71.07
58.57
83.24
42.38
77.17
85.04
62.27
74.14
79.38
65.78
74.80
81.18
60.94
87.53
91.42
79.82
75.23
57.53
82.42
56.76
98.86
82.90
78.97
69.10
42.36
57.07
80.48
111.19];

mode(x)
histogram(x)

%Modalwert berechnen
[unique_vals, ~, idx] = unique(x);
counts = histcounts(x, [unique_vals; max(unique_vals)+1]);
max_count = max(counts);
sorted = unique_vals(counts == max_count); % Alle Werte mit max. Häufigkeit
disp('Sortierte Werte:');
disp(sorted);

[counts, edges] = histcounts(x, 'BinMethod', 'auto');
[~, idx] = max(counts);
modal_gruppiert = (edges(idx) + edges(idx+1)) / 2

m = median(x,1)
iqr(x,1)

Q1 = quantile(data, 0.25);
Q3 = quantile(data, 0.75);
iqr_manual = Q3 - Q1;

