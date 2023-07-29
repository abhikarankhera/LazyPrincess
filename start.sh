# if [ -z $UPSTREAM_REPO ]
# then
#   echo "Cloning main Repository"
#   git clone https://github.com/abhikarankhera/LazyPrincess.git /LazyPrincess
# else
#   echo "Cloning Custom Repo from $UPSTREAM_REPO "
#   git clone $UPSTREAM_REPO /LazyPrincess
# fi
# cd /LazyPrincess
# pip3 install -U -r requirements.txt
# echo "Starting Bot...."
# python3 bot.py
#!/bin/bash

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please install Git first."
    exit 1
fi

# Check if Python3 is installed
if ! command -v python3 &> /dev/null; then
    echo "Python3 is not installed. Please install Python3 first."
    exit 1
fi

if [ -z "$UPSTREAM_REPO" ]; then
  echo "Cloning main Repository"
  git clone https://github.com/abhikarankhera/LazyPrincess.git ./LazyPrincess
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO"
  git clone "$UPSTREAM_REPO" ./LazyPrincess
fi

cd ./LazyPrincess
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
