# grep -o -E '\w+' extracts just the words, one per line
# wc -c counts the characters

function word_lengths() {
  for word in $(grep -o -E '\w+')
  do
    echo ${word}:$(echo ${word} | wc -c)
  done
}

word_lengths | sort -t: -k2 | tail -n1 | cut -d: -f1
