function EEG = load_data_sham_ec(EEG)
    %load_data_sham_ec Loads sham data(eye close part) into EEG variable.
    %   This Function loads EEG.sham.ec.data with files that are stored in \datasest\sham\{trial_numver}\{pre_or_post}\ec.txt and return EEG.
    for trials_index=1:EEG.sham.trialsCount
        for pre_post_index=1:2
            if ismember(trials_index, EEG.sham.ec.excluded_trials)==0
                file_name=strcat('dataset\sham\', string(trials_index), pre_or_post_folder_name_getter(pre_post_index), 'ec.txt');
                ec=load(file_name);
                EEG.sham.ec.data(pre_post_index, trials_index, :, :)=ec(1:500, :)';
            end
        end
    end
end