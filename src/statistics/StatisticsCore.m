function result = StatisticsCore(data)
    % mean for each group
	result.active_mean=mean(data.active);
	result.sham_mean=mean(data.sham);
    % Standard error for each group
	result.active_stderror=std(data.active)/sqrt(length(data.active));
	result.sham_stderror=std(data.sham)/sqrt(length(data.sham));
	[result.h, result.p_value]=ttest(data.active, data.sham); % P-value
end