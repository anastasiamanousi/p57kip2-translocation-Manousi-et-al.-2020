%This code calculates the percentage of cells with prevailed nuclear  
%p57kip2 localization in one well, give that the p57kip2 signal intensity
%in the two regions (nucl vs. cyto) is provided as input.
%The only parameter that changes is the threshold nucl(line 14), which
%compencates for differences in the overall signal intensity among the
%plates. This threshold is being set upon manual analysis of the positive and
%negative controls and under our experimental conditions was always 1000+/-
%200. 
%Note: this threshold has to be set for each plate and is strictly being kept
%constant for the whole plate.
A=xlsread('excel file name','excel sheet name','cytoplasmic p57 intensity values:nuclear p57 intensity values');
cyto=A(:,1);
nucl=A(:,2);
r=cyto./nucl;
p=(numel(r));
j=0;
k=0;
while j<=1000;
    if r>=1.3;
       j=j+1;
       break
    else and(r<1.3,nucl>1100);
        k=j+0;
        break
    end
end
w=double(ans);
s=sum(ans,1);
l=(s/p)*100;
   fprintf('%% cells with nuclear p57kip2: %f\n',l) 

   
