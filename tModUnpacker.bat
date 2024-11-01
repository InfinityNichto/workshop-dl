:: Do not use double quote here
SET TMODFILE=EquipAllAccessory_v0.0.0.3

:: -------

mkdir "tmodFileExtracted\\%TMODFILE%"
tModUnpacker.exe "tmodFile\\%TMODFILE%.tmod" "tmodFileExtracted\\%TMODFILE%\\"

git config user.name "github-actions[bot]"
git config user.email "github-actions[bot]@users.noreply.github.com"
git add "tmodFileExtracted\\%TMODFILE%\\"
git commit -m "Extracted %TMODFILE%.tmod"
git push
