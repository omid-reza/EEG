function result = StatisticsCore(data)
    % mean for each group
	result.active.mean=mean(data.active);
	result.sham.mean=mean(data.sham);
    % Standard error for each group
	result.active.stderror=std(data.active)/sqrt(length(data.active));
	result.sham.stderror=std(data.sham)/sqrt(length(data.sham));
    % F-value
	if length(data.sham)>length(data.active)
	    result.f_value=var(data.sham)/var(data.active);
	else
	    result.f_value=var(data.active)/var(data.sham);
    end
	[result.h, result.p_value]=ttest(data.active, data.sham); % P-value
    result.effect=meanEffectSize(data.active, data.sham); % f^2
end