#!/bin/awk -f

{
    gsub(/[,.:;?!()""”“]/," ");$0 = tolower($0)
    for(i=1;i<=NF;i++){words[$i]++}
}

END {for(word in words){print word,words[word]}}

