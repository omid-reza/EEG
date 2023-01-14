function result = StatisticsCore(data, sep_group)
    addpath(genpath('src/statistics'));
    inputArguments=ArgumentsLoader;
    if sep_group==false
        inputArguments.networkGroups=["Total"];
    end
    for ec_eo=inputArguments.ec_eo
        for freq=inputArguments.files
            for net=inputArguments.networkGroups
                data_index=strcat(ec_eo, "_", freq, "_", replace(net, "-", ""), "_diff");
                result_index=strcat(ec_eo, "_", freq, "_", replace(net, "-", ""));
                % mean for each group
                result.(result_index).active_mean=mean(data.(strcat("active_",data_index)));
                result.(result_index).sham_mean=mean(data.(strcat("sham_",data_index)));
                % standard error for each group
                result.(result_index).active_std=std(data.(strcat("active_",data_index)));
                result.(result_index).sham_std=std(data.(strcat("sham_",data_index)));
                % p_value for each group
                [result.(result_index).active_h, result.(result_index).active_p_value]=ttest(data.(strcat("active_",result_index, "_post")), data.(strcat("active_",result_index, "_pre")));
                [result.(result_index).sham_h, result.(result_index).sham_p_value]=ttest(data.(strcat("sham_",result_index, "_post")), data.(strcat("sham_",result_index, "_pre")));
            end
        end
    end
end