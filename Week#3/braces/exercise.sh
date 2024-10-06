# Q: Create 100 text files using brace expansion.

touch file{1..100}.txt

if [ $1 ]; then # if argument is passed (extra)
  rm file{1..100}.txt # clean up
fi