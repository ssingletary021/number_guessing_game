#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# prompt for username and read
echo -e "\nEnter your username:\n"
read USERNAME


# check if new username
USERNAME_INPUT=$($PSQL "SELECT username FROM game WHERE username = '$USERNAME'")

# if new, add to database
if [[ -z $USERNAME_INPUT ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
  INSERT_USERNAME=$($PSQL "INSERT INTO game(username) VALUES('$USERNAME')")

# if not new
else
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM game WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT best_game FROM game WHERE username = '$USERNAME'")
  echo -e "\nWelcome back, $USERNAME_INPUT! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
# RANDOM NUMBER GENERATION
# Generate a random number between 1 and 1000
# Initialize the number of guesses
# Game loop
 # Prompt for a guess
# Increment the number of guesses
# Check if the input is an integer
# Check if the guess is correct

# add to database as games_played

# must tally guesses to be added to database as number_of_guesses

# best_game = least guesses
exit
