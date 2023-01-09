function result = StatisticsCore(data)
    addpath(genpath('src/statistics'));
    inputArguments=ArgumentsLoader;
    for ec_eo=inputArguments.ec_eo
        for freq=inputArguments.files
            index=strcat(ec_eo, "_",freq);
            % mean for each group
            result.(index).active_mean=mean(data.(strcat("active_",index)));
            result.(index).sham_mean=mean(data.(strcat("sham_",index)));
            % standard error for each group
            result.(index).active_stderror=std(data.(strcat("active_",index))/sqrt(length(data.(strcat("active_",index)))));
            result.(index).sham_stderror=std(data.(strcat("sham_",index))/sqrt(length(data.(strcat("sham_",index)))));
            [result.(index).h, result.(index).p_value]=ttest(data.(strcat("active_",index)), data.(strcat("sham_",index)));
        end
    end
end