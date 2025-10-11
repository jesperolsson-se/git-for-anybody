#!/bin/bash

mkdir Exercise1
cd Exercise1

# Initial commit
git init --initial-branch=main
touch membership
git add membership
GIT_AUTHOR_NAME='Admin' GIT_AUTHOR_EMAIL='admin@example.com' GIT_AUTHOR_DATE='2025-01-01T00:00:01+0000' \
GIT_COMMITTER_NAME='Admin' GIT_COMMITTER_EMAIL='admin@example.com' GIT_COMMITTER_DATE='2025-01-01T00:00:01+0000' \
git commit -m "initial commit"

# Local config
git config alias.lg "log --graph --pretty=format:'%C(cyan)%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(magenta)<%an>%Creset' --abbrev-commit --date=relative"

# Mount Rushmore
echo "George Washington" >> membership
echo "Thomas Jefferson" >> membership
echo "Theodore Roosevelt" >> membership
echo "Abraham Lincoln" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Alice' GIT_AUTHOR_EMAIL='alice@example.com' GIT_AUTHOR_DATE='2025-01-05T00:00:01+0000' \
GIT_COMMITTER_NAME='Alice' GIT_COMMITTER_EMAIL='alice@example.com' GIT_COMMITTER_DATE='2025-01-05T00:00:01+0000' \
git commit -m "Add founders"

GIT_COMMITTER_NAME='Admin' GIT_COMMITTER_EMAIL='admin@example.com' GIT_COMMITTER_DATE='2025-01-05T23:59:00+0000' \
git tag -a "founding" -m "The establishment of the group"

# Classical philosophers
echo "Pythagoras" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Bob' GIT_AUTHOR_EMAIL='bob@example.com' GIT_AUTHOR_DATE='2025-01-13T00:00:01+0000' \
GIT_COMMITTER_NAME='Bob' GIT_COMMITTER_EMAIL='bob@example.com' GIT_COMMITTER_DATE='2025-01-13T00:00:01+0000' \
git commit -m "Welcome Pythagoras!"

echo "Socrates" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Bob' GIT_AUTHOR_EMAIL='bob@example.com' GIT_AUTHOR_DATE='2025-01-27T00:00:01+0000' \
GIT_COMMITTER_NAME='Bob' GIT_COMMITTER_EMAIL='bob@example.com' GIT_COMMITTER_DATE='2025-01-27T00:00:01+0000' \
git commit -m "Welcome Socrates!"

echo "Plato" >> membership
echo "Aristotle" >> membership
echo "Zeno of Elea" >> membership
echo "Euclid" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Alice' GIT_AUTHOR_EMAIL='alice@example.com' GIT_AUTHOR_DATE='2025-02-17T00:00:01+0000' \
GIT_COMMITTER_NAME='Alice' GIT_COMMITTER_EMAIL='alice@example.com' GIT_COMMITTER_DATE='2025-02-17T00:00:01+0000' \
git commit -m "Add newcommers from PhilConf"

sed -i 's/Pythagoras/Pythagoras of Samos/1' membership
git add membership
GIT_AUTHOR_NAME='Alice' GIT_AUTHOR_EMAIL='alice@example.com' GIT_AUTHOR_DATE='2025-02-17T00:00:02+0000' \
GIT_COMMITTER_NAME='Alice' GIT_COMMITTER_EMAIL='alice@example.com' GIT_COMMITTER_DATE='2025-02-17T00:00:02+0000' \
git commit -m "Clarify which Pythagoras"

# Nobel laureates
echo "Marie Curie" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Alice' GIT_AUTHOR_EMAIL='alice@example.com' GIT_AUTHOR_DATE='2025-03-03T00:00:01+0000' \
GIT_COMMITTER_NAME='Alice' GIT_COMMITTER_EMAIL='alice@example.com' GIT_COMMITTER_DATE='2025-03-03T00:00:01+0000' \
git commit -m "Welcome Marie!"

echo "Lise Meitner" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Bob' GIT_AUTHOR_EMAIL='bob@example.com' GIT_AUTHOR_DATE='2025-03-10T00:00:01+0000' \
GIT_COMMITTER_NAME='Bob' GIT_COMMITTER_EMAIL='bob@example.com' GIT_COMMITTER_DATE='2025-03-10T00:00:01+0000' \
git commit -m "Welcome Lise!"

echo "Albert Einstein" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Alice' GIT_AUTHOR_EMAIL='alice@example.com' GIT_AUTHOR_DATE='2025-03-23T00:00:01+0000' \
GIT_COMMITTER_NAME='Alice' GIT_COMMITTER_EMAIL='alice@example.com' GIT_COMMITTER_DATE='2025-03-23T00:00:01+0000' \
git commit -m "Welcome Albert!"

GIT_COMMITTER_NAME='Admin' GIT_COMMITTER_EMAIL='admin@example.com' GIT_COMMITTER_DATE='2025-03-31T23:59:00+0000' \
git tag -a "2025-Q1" -m "State at the end of the first quarter"

echo "Niels Bohr" >> membership
echo "Selma Lagerlöf" >> membership
echo "Max Planck" >> membership
echo "Richard Feynman" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Bob' GIT_AUTHOR_EMAIL='bob@example.com' GIT_AUTHOR_DATE='2025-04-13T00:00:01+0000' \
GIT_COMMITTER_NAME='Bob' GIT_COMMITTER_EMAIL='bob@example.com' GIT_COMMITTER_DATE='2025-04-13T00:00:01+0000' \
git commit -m "Add some people"

# Deletion
sed -i '/Thomas Jefferson/d' membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Alice' GIT_AUTHOR_EMAIL='alice@example.com' GIT_AUTHOR_DATE='2025-04-28T00:00:01+0000' \
GIT_COMMITTER_NAME='Alice' GIT_COMMITTER_EMAIL='alice@example.com' GIT_COMMITTER_DATE='2025-04-28T00:00:01+0000' \
git commit -m "Goodbye Thomas"

echo "Ada Lovelace" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Alice' GIT_AUTHOR_EMAIL='alice@example.com' GIT_AUTHOR_DATE='2025-05-08T00:00:01+0000' \
GIT_COMMITTER_NAME='Alice' GIT_COMMITTER_EMAIL='alice@example.com' GIT_COMMITTER_DATE='2025-05-08T00:00:01+0000' \
git commit -m "Welcome Ada!"

echo "Rosa Parks" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Alice' GIT_AUTHOR_EMAIL='alice@example.com' GIT_AUTHOR_DATE='2025-05-14T00:00:01+0000' \
GIT_COMMITTER_NAME='Alice' GIT_COMMITTER_EMAIL='alice@example.com' GIT_COMMITTER_DATE='2025-05-14T00:00:01+0000' \
git commit -m "Welcome Rosa!"

echo "Isaac Newton" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Alice' GIT_AUTHOR_EMAIL='alice@example.com' GIT_AUTHOR_DATE='2025-06-01T00:00:01+0000' \
GIT_COMMITTER_NAME='Alice' GIT_COMMITTER_EMAIL='alice@example.com' GIT_COMMITTER_DATE='2025-06-01T00:00:01+0000' \
git commit -m "Welcome Isaac!"

echo "Leonardo da Vinci" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Bob' GIT_AUTHOR_EMAIL='bob@example.com' GIT_AUTHOR_DATE='2025-06-10T00:00:01+0000' \
GIT_COMMITTER_NAME='Bob' GIT_COMMITTER_EMAIL='bob@example.com' GIT_COMMITTER_DATE='2025-06-10T00:00:01+0000' \
git commit -m "Welcome Leonardo!"

echo "Jane Austen" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Bob' GIT_AUTHOR_EMAIL='bob@example.com' GIT_AUTHOR_DATE='2025-06-28T00:00:01+0000' \
GIT_COMMITTER_NAME='Bob' GIT_COMMITTER_EMAIL='bob@example.com' GIT_COMMITTER_DATE='2025-06-28T00:00:01+0000' \
git commit -m "Welcome Jane!"

GIT_COMMITTER_NAME='Admin' GIT_COMMITTER_EMAIL='admin@example.com' GIT_COMMITTER_DATE='2025-06-30T23:59:00+0000' \
git tag -a "2025-Q2" -m "State at the end of the second quarter"

echo "Astrid Lindgren" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Bob' GIT_AUTHOR_EMAIL='bob@example.com' GIT_AUTHOR_DATE='2025-09-10T00:00:01+0000' \
GIT_COMMITTER_NAME='Bob' GIT_COMMITTER_EMAIL='bob@example.com' GIT_COMMITTER_DATE='2025-09-10T00:00:01+0000' \
git commit -m "Welcome Astrid!"

echo "Franz Kafka" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Alice' GIT_AUTHOR_EMAIL='alice@example.com' GIT_AUTHOR_DATE='2025-09-22T00:00:01+0000' \
GIT_COMMITTER_NAME='Alice' GIT_COMMITTER_EMAIL='alice@example.com' GIT_COMMITTER_DATE='2025-09-22T00:00:01+0000' \
git commit -m "Welcome Franz!"

GIT_COMMITTER_NAME='Admin' GIT_COMMITTER_EMAIL='admin@example.com' GIT_COMMITTER_DATE='2025-09-30T23:59:00+0000' \
git tag -a "2025-Q3" -m "State at the end of the third quarter"

echo "Martin Luther King Jr." >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Alice' GIT_AUTHOR_EMAIL='alice@example.com' GIT_AUTHOR_DATE='2025-10-03T00:00:01+0000' \
GIT_COMMITTER_NAME='Alice' GIT_COMMITTER_EMAIL='alice@example.com' GIT_COMMITTER_DATE='2025-10-03T00:00:01+0000' \
git commit -m "Welcome Martin!"

echo "Florence Nightingale" >> membership
sort -o membership membership
git add membership
GIT_AUTHOR_NAME='Alice' GIT_AUTHOR_EMAIL='alice@example.com' GIT_AUTHOR_DATE='2025-10-05T00:00:01+0000' \
GIT_COMMITTER_NAME='Alice' GIT_COMMITTER_EMAIL='alice@example.com' GIT_COMMITTER_DATE='2025-10-05T00:00:01+0000' \
git commit -m "Welcome Florence!"
