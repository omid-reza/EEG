clear;
% Config plt
plt.dot_size=100;
plt.y.pre.data=load("result\raw\connectivity\sham_ec\pre\Beta.txt");
plt.y.post.data=load("result\raw\connectivity\sham_ec\post\Beta.txt");

plt.y.pre.color=[194 16 16].*4/1000;
plt.y.post.color=[41 52 98].*4/1000;
plt.x.pre.data=ones(1, length(plt.y.pre.data));
plt.x.post.data=ones(1, length(plt.y.post.data))+1;
% Draw plts
figure(12),clf;
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.data, plt.dot_size, plt.y.post.color, "filled");
legend("Pre", "Post");
% Config plt
set(gca,'XTick',[]);
ylabel("Beta Connectivity", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gcf, "NumberTitle", false, "Name", "Sham - EC - Beta", "WindowState", "maximized");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);
% Save the plot as a fig file and a png file
savefig(gcf, "result\visual\fig\connectivity\sham_ec\Beta");
saveas(gcf, "result\visual\png\connectivity\sham_ec\Beta.png");