#!/usr/bin/env bash
# guessinggame.sh
# Counts files and asks the user to guess the count until correct.

count_files() {
  # This function counts how many files are in the current folder
  ls -1 | wc -l
}

echo "Welcome to the Guessing Game!"
echo "Try to guess how many files are in the current directory."

target=$(count_files)
guess=""

# Keep asking until the guess is correct
while true; do
  read -p "Enter your guess: " guess

  # Make sure the guess is a number
  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a number!"
    continue
  fi

  if (( guess < target )); then
    echo "Too low — try again."
  elif (( guess > target )); then
    echo "Too high — try again."
  else
    echo "🎉 Congratulations — you guessed correctly!"
    break
  fi
done
