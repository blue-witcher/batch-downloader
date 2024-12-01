cat download_list.txt | read -za url

set file_base booklet_
read -P "What is the file base-name? " file_base
read -P "Where should the counter start? " counter
read -P "Where to put the files? " file_base_path
read -P "File extension? " file_extension

for i in $url
    wget $i -P (echo $file_base_path) -O (echo $file_base\_$counter$file_extension) -q &
    set counter (math $counter + 1)
end
