read -p "How many users? " num_users
n=1
while ((n <= num_users))
do
  username=$(echo user-${n})
  echo Creating ${username}
  sudo adduser ${username}
  ((n++))
done
