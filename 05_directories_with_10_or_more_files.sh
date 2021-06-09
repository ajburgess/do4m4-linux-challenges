# Get list of all directories, starting at root dir
root_dir=$1
if [$root_dir -eq ""]
then
  root_dir=$(pwd)
fi
directories=$(sudo find ${root_dir} -type d -name "[!.]*")

# Go through each directory, getting number of files in directory
for directory in ${directories}
do
  # Find out how many files in directory
  # by listing the files one per line
  # then counting how many lines there were
  num_files=$(sudo find ${directory} -maxdepth 1 -type f -name "[!.]*" | wc -l)
  if ((num_files >= 10))
  then
    echo "${directory} has ${num_files} files"
  fi
done


