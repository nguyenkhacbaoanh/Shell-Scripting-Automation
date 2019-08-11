# Learn terminal unix command:

some text from languages.txt:
```text
Java,James
Ruby,Matz
Lisp,John
Bash,Brian
Self,David
```

## Cut:

1. `-c` option: like slide in python

```bash
cut -c 1-4 languages.txt

Java
Ruby
Lisp
Bash
Self
```

2. `-d` option: delimiter, split text, example: -d, -> split `Java,James` in to tuple (Java,James), but it need output there, mean you should choose what return in here, it can't be return tuple on terminal.
	- So `-f[index]` should be declare: like -f1 -> Java and -f2 -> James

```bash
cut -d, -f2 languages.txt

James
Matz
John
Brian
David
```

- ex: try to use cut to print out just the authors. Then sort them and then return the first two authors!

```bash
cut -d, -f2 languages.txt | sort | head -n 2
```

## Sed: Stream EDitor

Sed is commonly used for finding and replacing text, editing text in a file, and printing certain parts of a file (though it can to much more)

- replace comma `,` by space

```bash
sed -ie 's/,/ /g' languages.txt
```

	- g: global, replace for all match
	- s: subtitle

## awk

```bash
awk -F ' ' '{print $1}' languages.txt
```

- print $[number] like output in bash or sh

- -F option; delimiter

## xargs:

execute the same command for multiple inputs

```bash
find . -name *.md | xargs grep "bash"
```
- for each file markdown in directory, using command `grep` for each file

```bash
ls | xargs wc -l
```
- wc -l: count number of line in each file on current directory


