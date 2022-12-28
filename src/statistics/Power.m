clear;
addpath(genpath('src/statistics'));

inputArguments=ArgumentsLoader;
[data.active, data.sham]=deal([]);
for groups=inputArguments.groups
    for ec_eo=inputArguments.ec_eo
        for pre_post=inputArguments.pre_post
            for files=inputArguments.files
                for group=inputArguments.networkGroups
                    file_data=load(strcat("result\raw\power\", groups, "_", ec_eo, "\", pre_post, "\", group, files));
                    for d=file_data'
                        data.(groups)(end+1)=d;
                    end
                end
            end
        end
    end
end

result=StatisticsCore(data);
save('result\statistical\Power', 'result');

