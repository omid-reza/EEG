function EEG = load_data_active_ec(EEG)
    %load_data_active_ec Loads active data(eye close part) into EEG variable.
    %   This Function loads EEG.active.ec.data with files that are stored in \datasest\active\{trial_numver}\{pre_or_post}\ec.txt and return EEG.
    for trials_index=1:EEG.active.trialsCount
        for pre_post_index=1:2
            if ismember(trials_index, EEG.active.ec.excluded_trials)==0
                file_name=strcat('dataset\active\', string(trials_index), pre_or_post_folder_name_getter(pre_post_index), 'ec.txt');
                ec=load(file_name);
                EEG.active.ec.data(pre_post_index, trials_index, :, :)=ec(1:500, :)';
            end
        end
    end
end