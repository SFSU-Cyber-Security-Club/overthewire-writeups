# Utilizing the grep command - your search assistant 4 life 

This challenge requires that you find a needle in a haystack,
there are many many lines of text that you need to sift through in order
to find the word "millionth", which contains the key to the next level

Since we love automation, you can use the grep command to find specific 
lines in text that contained a certain phrase or sequence of characters

grep {word to search for} {file}

cat {file} | grep {word to search for}

The second command mentionned makes use of pipes to redirect output to
grep's input, we'll look into that later as well


