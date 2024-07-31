SET TMODFILE="Weapon.tmod"

:: -------

mkdir -p ./tmodFileExtracted/%TMODFILE
./tModUnpacker.exe ./tmodFiles/%TMODFILE% ./tmodFileExtracted/%TMODFILE%/

git add ./tmodFileExtracted/%TMODFILE%/
git commit -m "Extracted %TMODFILE%"
git push
