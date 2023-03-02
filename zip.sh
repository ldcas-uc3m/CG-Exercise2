# Bash script to zip the whole project in
# order to make it deriverable

# please make sure zip and texlive are installed


# make sure git is up to date
git pull
git checkout main


# zip it (excluding useless stuff)
zip -r P1-100429021-100383016.zip . -x zip.sh *.git\* README.md img\* run.sh src/main.exr