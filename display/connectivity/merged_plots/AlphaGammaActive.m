clear;
% Config plt
plt.dot_size=100;
plt.y.active.ec.alpha.pre.data=load("result\raw\connectivity\active_ec\pre\Alpha.txt");
plt.y.active.ec.alpha.post.data=load("result\raw\connectivity\active_ec\post\Alpha.txt");
plt.y.active.ec.gamma.pre.data=load("result\raw\connectivity\active_ec\pre\Gamma.txt");
plt.y.active.ec.gamma.post.data=load("result\raw\connectivity\active_ec\post\Gamma.txt");
plt.y.active.eo.alpha.pre.data=load("result\raw\connectivity\active_eo\pre\Alpha.txt");
plt.y.active.eo.alpha.post.data=load("result\raw\connectivity\active_eo\post\Alpha.txt");
plt.y.active.eo.gamma.pre.data=load("result\raw\connectivity\active_eo\pre\Gamma.txt");
plt.y.active.eo.gamma.post.data=load("result\raw\connectivity\active_eo\post\Gamma.txt");

plt.y.pre.color=[194 16 16].*4/1000;
plt.y.post.color=[41 52 98].*4/1000;
plt.x.pre.data=ones(1, length(plt.y.active.ec.alpha.pre.data));
plt.x.post.data=ones(1, length(plt.y.active.ec.alpha.post.data))+1;
% General Config
figure(53),clf;

subplot(2, 2, 1);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.active.ec.alpha.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.active.ec.alpha.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Alpha Connectivity - Active EC", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline                                      After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);

subplot(2, 2, 2);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.active.ec.gamma.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.active.ec.gamma.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Gamma Connectivity - Active EC", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline                                      After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);

subplot(2, 2, 3);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.active.eo.alpha.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.active.eo.alpha.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Alpha Connectivity - Active EO", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline                                      After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);

subplot(2, 2, 4);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.active.eo.gamma.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.active.eo.gamma.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Gamma Connectivity - Active EO", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline                                      After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);