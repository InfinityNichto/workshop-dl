SET TMODFILE=Weapon.tmod

:: -------

mkdir "./tmodFileExtracted/%TMODFILE%"
./tModUnpacker.exe "./tmodFiles/%TMODFILE%" "./tmodFileExtracted/%TMODFILE%/"

git config user.name "github-actions[bot]"
git config user.email "github-actions[bot]@users.noreply.github.com"
git add "./tmodFileExtracted/%TMODFILE%/"
git commit -m "Extracted %TMODFILE%"
git push