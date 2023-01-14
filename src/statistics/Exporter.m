clear;
addpath(genpath('src/statistics'));
inputArguments=ArgumentsLoader;

%Power and Amplitude
types = ["Amplitude", "Power"];
params = ["active_mean", "sham_mean", "active_std", "sham_std", "active_p_value", "active_h", "sham_p_value", "sham_h"];
for type_index=1:length(types)
    type=load(strcat("result\statistical\", types(type_index),".mat"));
    for ec_eo=inputArguments.ec_eo
        for freq=inputArguments.files
            for net=inputArguments.networkGroups
                fileID=fopen(strcat("result\statistical\", types(type_index),"\", ec_eo, "_", freq, "_", replace(net, "-", ""),".txt"), "w");
                index=strcat(ec_eo, "_", freq, "_", replace(net, "-", ""));
                for param_index=1:length(params)
                    param=params(param_index);
                    fprintf(fileID, '%s :', param);
	                fprintf(fileID, '%f \n', type.result.(index).(param));
                end
                fclose(fileID);
            end
        end
    end
end

%Connectivity
type=load(strcat("result\statistical\Connectivity.mat"));
for ec_eo=inputArguments.ec_eo
    for freq=inputArguments.files
        for net=inputArguments.networkGroups
            fileID=fopen(strcat("result\statistical\Connectivity\", ec_eo, "_", freq, ".txt"), "w");
            index=strcat(ec_eo, "_", freq, "_Total");
            for param_index=1:length(params)
                param=params(param_index);
                fprintf(fileID, '%s :', param);
                fprintf(fileID, '%f \n', type.result.(index).(param));
            end
            fclose(fileID);
        end
    end
end