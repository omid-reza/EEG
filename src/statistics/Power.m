clear;
addpath(genpath('src/statistics'));
inputArguments=ArgumentsLoader;
for groups=inputArguments.groups
    for ec_eo=inputArguments.ec_eo
        for files=inputArguments.files
            for group=inputArguments.networkGroups
                pre_file=load(strcat("result\raw\power\", groups, "_", ec_eo, "\pre\", group, files, ".txt"));
                post_file=load(strcat("result\raw\power\", groups, "_", ec_eo, "\post\", group, files, ".txt"));
                diff_post_pre=pre_file-post_file;
                index=strcat(groups, "_", ec_eo, "_", files, "_", replace(group, "-", ""), "_diff");
                data.(index)=deal([]);
                for d=diff_post_pre'
                    data.(index)(end+1)=d;
                end
                index=strcat(groups, "_", ec_eo, "_", files, "_", replace(group, "-", ""), "_pre");
                data.(index)=deal([]);
                for d=pre_file'
                    data.(index)(end+1)=d;
                end
                index=strcat(groups, "_", ec_eo, "_", files, "_", replace(group, "-", ""), "_post");
                data.(index)=deal([]);
                for d=post_file'
                    data.(index)(end+1)=d;
                end
            end
        end
    end
end

result=StatisticsCore(data, true);

save('result\statistical\Power', 'result');