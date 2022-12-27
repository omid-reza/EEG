clear;
% Config plt
plt.dot_size=100;
plt.y.sham.ec.alpha.group1.pre.data=load("result\raw\power\sham_ec\pre\Group1-Alpha.txt");
plt.y.sham.ec.alpha.group1.post.data=load("result\raw\power\sham_ec\post\Group1-Alpha.txt");
plt.y.sham.ec.alpha.group2.pre.data=load("result\raw\power\sham_ec\pre\Group2-Alpha.txt");
plt.y.sham.ec.alpha.group2.post.data=load("result\raw\power\sham_ec\post\Group2-Alpha.txt");
plt.y.sham.ec.gamma.group1.pre.data=load("result\raw\power\sham_ec\pre\Group1-Gamma.txt");
plt.y.sham.ec.gamma.group1.post.data=load("result\raw\power\sham_ec\post\Group1-Gamma.txt");
plt.y.sham.ec.gamma.group2.pre.data=load("result\raw\power\sham_ec\pre\Group2-Gamma.txt");
plt.y.sham.ec.gamma.group2.post.data=load("result\raw\power\sham_ec\post\Group2-Gamma.txt");
plt.y.sham.eo.alpha.group1.pre.data=load("result\raw\power\sham_eo\pre\Group1-Alpha.txt");
plt.y.sham.eo.alpha.group1.post.data=load("result\raw\power\sham_eo\post\Group1-Alpha.txt");
plt.y.sham.eo.alpha.group2.pre.data=load("result\raw\power\sham_eo\pre\Group2-Alpha.txt");
plt.y.sham.eo.alpha.group2.post.data=load("result\raw\power\sham_eo\post\Group2-Alpha.txt");
plt.y.sham.eo.gamma.group1.pre.data=load("result\raw\power\sham_eo\pre\Group1-Gamma.txt");
plt.y.sham.eo.gamma.group1.post.data=load("result\raw\power\sham_eo\post\Group1-Gamma.txt");
plt.y.sham.eo.gamma.group2.pre.data=load("result\raw\power\sham_eo\pre\Group2-Gamma.txt");
plt.y.sham.eo.gamma.group2.post.data=load("result\raw\power\sham_eo\post\Group2-Gamma.txt");

plt.y.pre.color=[194 16 16].*4/1000;
plt.y.post.color=[41 52 98].*4/1000;
plt.x.pre.data=ones(1, length(plt.y.sham.ec.alpha.group1.pre.data));
plt.x.post.data=ones(1, length(plt.y.sham.ec.alpha.group1.post.data))+1;

% General Config
figure(58),clf;

subplot(2, 4, 1);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.sham.ec.alpha.group1.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.sham.ec.alpha.group1.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Alpha Power - Sham EC", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 1", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 2);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.sham.ec.alpha.group2.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.sham.ec.alpha.group2.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Alpha Power - Sham EC", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 2", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 3);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.sham.ec.gamma.group1.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.sham.ec.gamma.group1.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Gamma Power - Sham EC", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 1", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 4);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.sham.ec.gamma.group2.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.sham.ec.gamma.group2.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Gamma Power - Sham EC", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 2", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 5);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.sham.eo.alpha.group1.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.sham.eo.alpha.group1.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Alpha Power - Sham EO", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 1", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 6);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.sham.eo.alpha.group2.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.sham.eo.alpha.group2.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Alpha Power - Sham EO", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 2", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 7);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.sham.eo.gamma.group1.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.sham.eo.gamma.group1.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Gamma Power - Sham EO", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 1", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 8);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.sham.eo.gamma.group2.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.sham.ec.gamma.group2.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Gamma Power - Sham EO", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 2", "Color", [21 19 60].*4/1000, "FontWeight", "bold");