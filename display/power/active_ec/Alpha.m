clear;
% Config plot
plot.dot_size=100;
plot.y.pre.group1.data=load("result\power\active_ec\pre\Group1-Alpha.txt");
plot.y.pre.group2.data=load("result\power\active_ec\pre\Group2-Alpha.txt");
plot.y.post.group1.data=load("result\power\active_ec\post\Group1-Alpha.txt");
plot.y.post.group2.data=load("result\power\active_ec\post\Group2-Alpha.txt");

plot.y.pre.color=[57 62 70].*4/1000;
plot.y.post.color=[250 119 0].*4/1000;
plot.x.pre.data=ones(1, length(plot.y.pre.group1.data));
plot.x.post.data=ones(1, length(plot.y.post.group1.data))+1;
% Draw a plot for group1
figure(1), clf;
subplot(211)
hold on;
grid on;
swarmchart(plot.x.pre.data, plot.y.pre.group1.data, plot.dot_size, plot.y.pre.color, "filled");
swarmchart(plot.x.post.data, plot.y.post.group1.data, plot.dot_size, plot.y.post.color, "filled");
legend("Pre", "Post");
% Config plot for group1
set(gca,'XTick',[]);
ylabel("Alpha Power", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gcf, "NumberTitle", false, "Name", "Active - EC");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);
title('The First Group(F3, Fz, Fp1)');
% Draw a plot for group2
subplot(212);
hold on;
grid on;
swarmchart(plot.x.pre.data, plot.y.pre.group2.data, plot.dot_size, plot.y.pre.color, "filled");
swarmchart(plot.x.post.data, plot.y.post.group2.data, plot.dot_size, plot.y.post.color, "filled");
legend("Pre", "Post");
% Config plot for group1
set(gca,'XTick',[]);
ylabel("Alpha Power", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gcf, "NumberTitle", false, "Name", "Active - EC");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);
title('The Second Group(P3, T5, T3)');