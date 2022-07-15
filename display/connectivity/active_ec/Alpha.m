clear;
% Config plot
plot.dot_size=100;
plot.y.pre.data=load("result\connectivity\active_ec\pre\Alpha.txt");
plot.y.post.data=load("result\connectivity\active_ec\post\Alpha.txt");
plot.y.pre.color=[57 62 70].*4/1000;
plot.y.post.color=[250 119 0].*4/1000;
plot.x.pre.data=ones(1, length(plot.y.pre.data));
plot.x.post.data=ones(1, length(plot.y.post.data))+1;
% Draw plots
hold on;
grid on;
swarmchart(plot.x.pre.data, plot.y.pre.data, plot.dot_size, plot.y.pre.color, "filled");
swarmchart(plot.x.post.data, plot.y.post.data, plot.dot_size, plot.y.post.color, "filled");
legend("Pre", "Post");
% Config plot
set(gca,'XTick',[]);
ylabel("Alpha Connectivity", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gcf, "NumberTitle", false, "Name", "Active - EC");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);