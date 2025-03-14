#!/bin/bash

for i in {1..100}  # Ajuste o número para a quantidade de dias com commits
do
    echo "Commit do dia $i" >> minhoca.txt  # Adiciona texto ao arquivo
    git add minhoca.txt
    git commit -m "Commit do dia $i"
    
    # Ajusta a data do commit para "i" dias atrás
    GIT_COMMITTER_DATE="$(date --date="$i days ago" --rfc-2822)" git commit --amend --no-edit --date "$GIT_COMMITTER_DATE"
done

# Enviar tudo para o GitHub
git push origin main
