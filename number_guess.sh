#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# prompt for username and read
echo -e "\nEnter your username:\n"
read USERNAME


# check if new username
USERNAME_INPUT=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")

# if new, add to database
if [[ -z $USERNAME_INPUT ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here.\n"
  INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")

# if not new
else
  GAMES_PLAYED=$($PSQL "SELECT count(*) FROM games JOIN users ON games.user_id = users.user_id WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games JOIN users ON games.user_id = users.user_id where username = '$USERNAME'")
  echo -e "\nWelcome back, $USERNAME_INPUT! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
# RANDOM NUMBER GENERATION
# Generate a random number between 1 and 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# Initialize the number of guesses
NUMBER_OF_GUESSES=0

# Prompt for a guess
echo -n "Guess the secret number between 1 and 1000:"

# Game loop
while true; do

 # Prompt for a guess
 read USER_GUESS

# Increment the number of guesses
((NUMBER_OF_GUESSES++))

# Check if the input is an integer
if ! [[ $USER_GUESS =~ ^[0-9]+$ ]]
then
  echo "That is not an integer, guess again:"
  continue
fi

# Check if the guess is correct
if [[ $USER_GUESS -eq $SECRET_NUMBER ]]
then
  echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
  break

elif [[ $USER_GUESS -gt $SECRET_NUMBER ]]
then 
  echo "It's lower than that, guess again:"
elif [[ $USER_GUESS -lt $SECRET_NUMBER ]]
then
  echo "It's higher than that, guess again:"
fi
done
# add to database as games_played
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
INSERT_GAME_ATTEMPT=$($PSQL "INSERT INTO games(game_id, user_id, number_of_guesses) VALUES(DEFAULT, $USER_ID, $NUMBER_OF_GUESSES)")

# must tally guesses to be added to database as number_of_guesses

# best_game = least guesses

exit
