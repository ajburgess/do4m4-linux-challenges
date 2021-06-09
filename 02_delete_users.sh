# Read usernames from standard input, and create new account for each one

while read name
do
  sudo userdel --remove ${name}
done

