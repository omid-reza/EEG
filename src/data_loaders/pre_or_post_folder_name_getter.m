function pre_or_post = pre_or_post_folder_name_getter(index)
%post_pre_folder_getter returns folder's name
%   returns folder's name based on index that is passed
pre_or_post_folder_name=["\pre\", "\post\"];
pre_or_post=pre_or_post_folder_name(index);
end