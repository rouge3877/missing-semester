" Q2
cat /usr/share/dict/words | tr 'A-Z' 'a-z' | grep -P '\w*a\w*a\w*a\w*' | grep -vP "\'s$" |
    awk '{print substr($0, length($0)-1, 2)}' | sort | uniq -c | sort -nk1,1 | tail -n3

" Q3
