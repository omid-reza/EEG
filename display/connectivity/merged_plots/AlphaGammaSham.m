clear;
% Config plt
plt.dot_size=100;
plt.y.sham.ec.alpha.pre.data=load("result\raw\connectivity\sham_ec\pre\Alpha.txt");
plt.y.sham.ec.alpha.post.data=load("result\raw\connectivity\sham_ec\post\Alpha.txt");
plt.y.sham.ec.gamma.pre.data=load("result\raw\connectivity\sham_ec\pre\Gamma.txt");
plt.y.sham.ec.gamma.post.data=load("result\raw\connectivity\sham_ec\post\Gamma.txt");
plt.y.sham.eo.alpha.pre.data=load("result\raw\connectivity\sham_eo\pre\Alpha.txt");
plt.y.sham.eo.alpha.post.data=load("result\raw\connectivity\sham_eo\post\Alpha.txt");
plt.y.sham.eo.gamma.pre.data=load("result\raw\connectivity\sham_eo\pre\Gamma.txt");
plt.y.sham.eo.gamma.post.data=load("result\raw\connectivity\sham_eo\post\Gamma.txt");

plt.y.pre.color=[194 16 16].*4/1000;
plt.y.post.color=[41 52 98].*4/1000;
plt.x.pre.data=ones(1, length(plt.y.sham.ec.alpha.pre.data));
plt.x.post.data=ones(1, length(plt.y.sham.ec.alpha.post.data))+1;
% General Config
figure(54),clf;

subplot(2, 2, 1);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.sham.ec.alpha.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.sham.ec.alpha.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Alpha Connectivity - Sham EC", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline                                      After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);

subplot(2, 2, 2);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.sham.ec.gamma.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.sham.ec.gamma.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Gamma Connectivity - Sham EC", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline                                      After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);

subplot(2, 2, 3);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.sham.eo.alpha.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.sham.eo.alpha.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Alpha Connectivity - Sham EO", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline                                      After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);

subplot(2, 2, 4);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.sham.eo.gamma.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.sham.eo.gamma.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Gamma Connectivity - Sham EO", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline                                      After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);