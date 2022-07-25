clear;
load dataset\data.mat;

group_names=["first", "second"];
group_file_names=["Group1", "Group2"];
pre_post_folder_names=["pre\", "post\"];
groups.first.channels.labels=["F3", "Fz", "Fp1"];
groups.second.channels.labels=["P3", "T5", "T3"];
groups.first.channels.indexs= zeros(1, length(groups.first.channels.labels));
groups.second.channels.indexs=zeros(1, length(groups.second.channels.labels));

% Calculate the index of each channel and also store it into an array
for list_index=1:length(groups.first.channels.labels)
    groups.first.channels.indexs(list_index)=find(strcmpi(groups.first.channels.labels(list_index), [EEG.channels.labels])==1);
end
for list_index=1:length(groups.second.channels.labels)
    groups.second.channels.indexs(list_index)=find(strcmpi(groups.second.channels.labels(list_index), [EEG.channels.labels])==1);
end

welch.kernel.window_size=2*EEG.srate;
for pre_post_index=1:2
    for group_name_indexs=1:length(group_names)
        result=[];
        for trial_index=1:EEG.sham.trialsCount
            % Skip computation for trials that should be excluded
            if ismember(trial_index, EEG.sham.eo.excluded_trials)
                continue;
            end
            % Calulate Welch method based on params
            welch.signal.data=squeeze(mean(EEG.sham.eo.data(pre_post_index, trial_index, groups.(group_names(group_name_indexs)).channels.indexs , :), 3))';
            welch.kernel.data=hamming(welch.kernel.window_size);
            [welch.PSD_estimate, welch.cyclical_frequencies]=pwelch(welch.signal.data, welch.kernel.data, round(welch.kernel.window_size/4), EEG.srate*100, EEG.srate);
            % Extract Alpha band power and stash it into an array that is named result
            range_begin=dsearchn(welch.cyclical_frequencies, 12);
            range_end=dsearchn(welch.cyclical_frequencies, 28);
            result(end+1)=sum(welch.PSD_estimate(range_begin:range_end));
        end
        % Write response(Alpha band powers) into a file
        fileID=fopen(strcat("result\raw\power\sham_eo\",pre_post_folder_names(pre_post_index), group_file_names(group_name_indexs), "-Alpha.txt"), "w");
        fprintf(fileID, '%5d \n', result);
        fclose(fileID);
    end
end