clear;
addpath(genpath('src/statistics'));
inputArguments=ArgumentsLoader;
for groups=inputArguments.groups
    for ec_eo=inputArguments.ec_eo
        for pre_post=inputArguments.pre_post
            for files=inputArguments.files
                for group=inputArguments.networkGroups
                    file_data=load(strcat("result\raw\connectivity\", groups, "_", ec_eo, "\", pre_post, "\", files, ".txt"));
                    index=strcat(groups, "_", ec_eo, "_", files, "_Total");
                    data.(index)=deal([]);
                    for d=file_data'
                        data.(index)(end+1)=d;
                    end
                end
            end
        end
    end
end

result=StatisticsCore(data, false);

save('result\statistical\Connectivity', 'result');
