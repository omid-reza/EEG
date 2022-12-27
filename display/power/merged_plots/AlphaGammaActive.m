clear;
% Config plt
plt.dot_size=100;
plt.y.active.ec.alpha.group1.pre.data=load("result\raw\power\active_ec\pre\Group1-Alpha.txt");
plt.y.active.ec.alpha.group1.post.data=load("result\raw\power\active_ec\post\Group1-Alpha.txt");
plt.y.active.ec.alpha.group2.pre.data=load("result\raw\power\active_ec\pre\Group2-Alpha.txt");
plt.y.active.ec.alpha.group2.post.data=load("result\raw\power\active_ec\post\Group2-Alpha.txt");
plt.y.active.ec.gamma.group1.pre.data=load("result\raw\power\active_ec\pre\Group1-Gamma.txt");
plt.y.active.ec.gamma.group1.post.data=load("result\raw\power\active_ec\post\Group1-Gamma.txt");
plt.y.active.ec.gamma.group2.pre.data=load("result\raw\power\active_ec\pre\Group2-Gamma.txt");
plt.y.active.ec.gamma.group2.post.data=load("result\raw\power\active_ec\post\Group2-Gamma.txt");
plt.y.active.eo.alpha.group1.pre.data=load("result\raw\power\active_eo\pre\Group1-Alpha.txt");
plt.y.active.eo.alpha.group1.post.data=load("result\raw\power\active_eo\post\Group1-Alpha.txt");
plt.y.active.eo.alpha.group2.pre.data=load("result\raw\power\active_eo\pre\Group2-Alpha.txt");
plt.y.active.eo.alpha.group2.post.data=load("result\raw\power\active_eo\post\Group2-Alpha.txt");
plt.y.active.eo.gamma.group1.pre.data=load("result\raw\power\active_eo\pre\Group1-Gamma.txt");
plt.y.active.eo.gamma.group1.post.data=load("result\raw\power\active_eo\post\Group1-Gamma.txt");
plt.y.active.eo.gamma.group2.pre.data=load("result\raw\power\active_eo\pre\Group2-Gamma.txt");
plt.y.active.eo.gamma.group2.post.data=load("result\raw\power\active_eo\post\Group2-Gamma.txt");

plt.y.pre.color=[194 16 16].*4/1000;
plt.y.post.color=[41 52 98].*4/1000;
plt.x.pre.data=ones(1, length(plt.y.active.ec.alpha.group1.pre.data));
plt.x.post.data=ones(1, length(plt.y.active.ec.alpha.group1.post.data))+1;

% General Config
figure(57),clf;

subplot(2, 4, 1);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.active.ec.alpha.group1.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.active.ec.alpha.group1.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Alpha Power - Active EC", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 1", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 2);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.active.ec.alpha.group2.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.active.ec.alpha.group2.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Alpha Power - Active EC", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 2", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 3);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.active.ec.gamma.group1.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.active.ec.gamma.group1.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Gamma Power - Active EC", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 1", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 4);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.active.ec.gamma.group2.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.active.ec.gamma.group2.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Gamma Power - Active EC", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 2", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 5);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.active.eo.alpha.group1.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.active.eo.alpha.group1.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Alpha Power - Active EO", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 1", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 6);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.active.eo.alpha.group2.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.active.eo.alpha.group2.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Alpha Power - Active EO", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 2", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 7);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.active.eo.gamma.group1.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.active.eo.gamma.group1.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Gamma Power - Active EO", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 1", "Color", [21 19 60].*4/1000, "FontWeight", "bold");

subplot(2, 4, 8);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.active.eo.gamma.group2.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.active.ec.gamma.group2.post.data, plt.dot_size, plt.y.post.color, "filled");
ylabel("Gamma Power - Active EO", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
xlabel("  Baseline          After intervention", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca,'XTick',[]);
title("Network 2", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
% Save the plot as a fig file and a png file
savefig(gcf, "result\visual\fig\power\merged_plots\AlphaGammaActive");
saveas(gcf, "result\visual\png\power\merged_plots\AlphaGammaActive.png");