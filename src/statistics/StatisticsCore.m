function result = StatisticsCore(data, sep_group)
    addpath(genpath('src/statistics'));
    inputArguments=ArgumentsLoader;
    if sep_group==false
        inputArguments.networkGroups=["Total"];
    end
    for ec_eo=inputArguments.ec_eo
        for freq=inputArguments.files
            for net=inputArguments.networkGroups
                index=strcat(ec_eo, "_", freq, "_", replace(net, "-", ""));
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
end