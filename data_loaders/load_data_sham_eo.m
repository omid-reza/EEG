function EEG = load_data_sham_eo(EEG)
    %load_data_sham_eo Loads sham data(eye open part) into EEG variable.
    %   This Function loads EEG.sham.eo.data with files that are stored in \data\sham\{trial_numver}\{pre_or_post}\eo.txt and return EEG.
    for trials_index=1:EEG.sham.trialsCount
        for pre_post_index=1:2
            if ismember(trials_index, EEG.sham.eo.excluded_trials)==0
                file_name=strcat('data\sham\', string(trials_index), pre_or_post_folder_name_getter(pre_post_index), 'eo.txt');
                eo=load(file_name);
                EEG.sham.eo.data(pre_post_index, trials_index, :, :)=eo(1:500, :)';
            end
        end
    end
end