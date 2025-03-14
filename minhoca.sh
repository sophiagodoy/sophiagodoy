#!/bin/bash
REPO_PATH=$(pwd)
cd $REPO_PATH

# Configurar nome e email do Git (caso necessário)
git config user.name "sophiagodoy"
git config user.email "sophia.fg@puccampinas.edu.br"

# Criar commits específicos para desenhar a minhoca
for day in 1 3 5 7 10 12 15 18 20 22 25 27 30; do
    export GIT_COMMITTER_DATE="2024-10-$day 12:00:00"
    export GIT_AUTHOR_DATE="2024-10-$day 12:00:00"
    echo "Commit para a minhoca no dia $day" >> minhoca.txt
    git add minhoca.txt
    git commit -m "Commit da minhoca no dia $day" --date="2024-10-$day 12:00:00"
done

git push origin main
