function Amplitude(EEG, start_frequency, end_frequency, active_or_sham, ec_or_eo, file_name)
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

	for pre_post_index=1:2
	    for group_name_indexs=1:length(group_names)
	        result=[];
	        for trial_index=1:EEG.(active_or_sham).trialsCount
	            % Skip computation for trials that should be excluded
	            if ismember(trial_index, EEG.(active_or_sham).(ec_or_eo).excluded_trials)
	                continue;
	            end
	            % Calulate Welch method based on params
	            data=squeeze(mean(EEG.(active_or_sham).(ec_or_eo).data(pre_post_index, trial_index, groups.(group_names(group_name_indexs)).channels.indexs , :), 3))';
	            % Extract band power and stash it into an array that is named result
	            coefficient=fft(data)/EEG.pnts;
				amplitude=abs(coefficient);
				amplitude(2:end)=2*amplitude(2:end);
				% amplitude=amplitude./max(amplitude);
				frequencites=linspace(0, EEG.srate/2, floor(EEG.pnts/2)+1);
				range_begin=dsearchn(frequencites', start_frequency);
				range_end=dsearchn(frequencites', end_frequency);
	            result(end+1)=sum(amplitude(range_begin:range_end));
	        end
	        % Write response(band powers) into a file
	        fileID=fopen(strcat("result\raw\amplitude\", active_or_sham, "_", ec_or_eo, "\", pre_post_folder_names(pre_post_index), group_file_names(group_name_indexs), "-", file_name), "w");
	        fprintf(fileID, '%f \n', result);
	        fclose(fileID);
	    end
	end
end