load SS1_power.mat

file=importdata('Q:\2030\03 Projekte\DG KF\2.03.02816.1.0 e!M4 hybrid-VPP4DSO (Burnier)\AP3_Netzsimulationen\ENA\RESULTS\case0_Neplan\testTrafo_new.txt');
SS1_NEPLAN=file.data(:,1);
temp=SS1_NEPLAN(indexEqual_P);
SS1_NEPLAN_short = temp;

ENA_NEPLAN = [SS1_ENA,SS1_NEPLAN_short];

%plot(abs(SS1_ENA)-abs(SS1_NEPLAN_short));
plot(ENA_NEPLAN);

title('Cummulate Active Power on SS1','FontSize',20);
%title('Difference in MW','FontSize',20);
xlabel(['Number of Time Points:' num2str(size(ENA_NEPLAN,1))],'FontSize',20);
ylabel('Active Power [MW]','FontSize',20);
%h_legend=legend('ENA','DB','NEPLAN');
h_legend=legend('ENA','NEPLAN');
%set(h_legend,'FontSize',18);
grid;
set(gca,'XLim',[0 size(ENA_NEPLAN,1)]);
set(gca,'XTick',[0:size(ENA_NEPLAN,1)/12:size(ENA_NEPLAN,1)]);
set(gca,'XTickLabel',{'JAN' 'FEV' 'MAR' 'ABR' 'MAY' 'JUN' 'JUL' 'AUG' 'SEP' 'OCT' 'NOV' 'DEC' ''},'FontSize',14);

clear temp file h_legend;