%%--------------------------- pp4
goodplot();
A = csvread('3-tightest-VN.csv');
yyaxis left;
plot(A(:,1), A(:,3), 's-', 'LineWidth', 4,'markers',22);
hold on; grid on;
%text(1.2,A(1,6),strcat('\leftarrow',num2str(100*A(1,8)),'% non-zero cells'),'FontSize',22,'FontWeight','Bold');
% legend('Baseline', 'Exact','location','nw');
ylabel('time (sec) - logscale');
xlabel('n');
set(gca,'YScale','log');
%axis([2000 8000 0 inf]);
%set(gca,'YTick',[10^-2,10^-1,10^0]);
%set(gca,'xticklabels',{'N1','N2','N3','N4','N5','N6','N7'});
%set(gca,'XTickLabelRotation',45)
yyaxis right;
plot(A(:,1), A(:,2), ':', 'LineWidth', 4,'markers',22);
ylabel('width of range');
set(gca,'FontSize',22);
set(gca,'FontWeight','Bold');
set(get(gca,'xlabel'),'FontSize', 22, 'FontWeight', 'Bold');
set(get(gca,'ylabel'),'FontSize', 22, 'FontWeight', 'Bold');

%xlabel('');
%set(gca,'YTick',cellstr(num2str(round(log10(YTick(:))), '10^%d')));
print -dpdf -r150 3-tightest-VN.pdf;
hold off;
%%
goodplot();
A = csvread('3-MSS-VN.csv');
yyaxis left;
plot(A(:,1), A(:,3), 's-', 'LineWidth', 4,'markers',22);
hold on; grid on;
%text(1.2,A(1,6),strcat('\leftarrow',num2str(100*A(1,8)),'% non-zero cells'),'FontSize',22,'FontWeight','Bold');
% legend('Baseline', 'Exact','location','nw');
ylabel('time (sec) - logscale');
xlabel('n');
set(gca,'YScale','log');
axis([2000 10000 10^-1 10^3]);
set(gca,'YTick',[10^-1,10^0,10^1,10^2]);
%set(gca,'xticklabels',{'N1','N2','N3','N4','N5','N6','N7'});
%set(gca,'XTickLabelRotation',45)
yyaxis right;
plot(A(:,1), A(:,2), ':', 'LineWidth', 4,'markers',22);
axis([2000 10000 0 1]);
set(gca,'YTick',[0,.2,.4,.6,.8,1]);
ylabel('support');
set(gca,'FontSize',22);
set(gca,'FontWeight','Bold');
set(get(gca,'xlabel'),'FontSize', 22, 'FontWeight', 'Bold');
set(get(gca,'ylabel'),'FontSize', 22, 'FontWeight', 'Bold');

%xlabel('');
%set(gca,'YTick',cellstr(num2str(round(log10(YTick(:))), '10^%d')));
print -dpdf -r150 3-MSS-VN.pdf;
hold off;
%%
goodplot();
A = csvread('3-MSS-VDelta.csv');
yyaxis left;
plot(A(:,2), A(:,6), 's-', 'LineWidth', 4,'markers',22);
hold on; grid on;
%text(1.2,A(1,6),strcat('\leftarrow',num2str(100*A(1,8)),'% non-zero cells'),'FontSize',22,'FontWeight','Bold');
% legend('Baseline', 'Exact','location','nw');
ylabel('time (sec) - logscale');
xlabel('width of range');
set(gca,'YScale','log');
% axis([2000 10000 0 1]);
%set(gca,'YTick',[10^-2,10^-1,10^0]);
%set(gca,'xticklabels',{'N1','N2','N3','N4','N5','N6','N7'});
%set(gca,'XTickLabelRotation',45)
yyaxis right;
plot(A(:,2), A(:,3), ':', 'LineWidth', 4,'markers',22);
% axis([2000 10000 0 1]);
% set(gca,'YTick',[0,.2,.4,.6,.8,1]);
ylabel('support');
set(gca,'FontSize',22);
set(gca,'FontWeight','Bold');
set(get(gca,'xlabel'),'FontSize', 22, 'FontWeight', 'Bold');
set(get(gca,'ylabel'),'FontSize', 22, 'FontWeight', 'Bold');
print -dpdf -r150 3-MSS-VDelta-n45253.pdf;
hold off;
%%
goodplot();
A = csvread('3-tightest-VS.csv');
yyaxis left;
plot(A(:,2), A(:,6), 's-', 'LineWidth', 4,'markers',22);
hold on; grid on;
%text(1.2,A(1,6),strcat('\leftarrow',num2str(100*A(1,8)),'% non-zero cells'),'FontSize',22,'FontWeight','Bold');
% legend('Baseline', 'Exact','location','nw');
ylabel('time (sec)');
xlabel('support');
 axis([.1 0.9 0 4]);
set(gca,'XTick',[.1,.3,.5,.7,.9]);
%set(gca,'xticklabels',{'N1','N2','N3','N4','N5','N6','N7'});
%set(gca,'XTickLabelRotation',45)
yyaxis right;
plot(A(:,2), A(:,5), ':', 'LineWidth', 4,'markers',22);
% axis([2000 10000 0 1]);
% set(gca,'YTick',[0,.2,.4,.6,.8,1]);
ylabel('width of range');
set(gca,'FontSize',22);
set(gca,'FontWeight','Bold');
set(get(gca,'xlabel'),'FontSize', 22, 'FontWeight', 'Bold');
set(get(gca,'ylabel'),'FontSize', 22, 'FontWeight', 'Bold');
print -dpdf -r150 3-tightest-VS-n45253.pdf;
hold off;