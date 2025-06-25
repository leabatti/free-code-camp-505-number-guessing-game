#!/bin/bash

# querying database
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\n~~~~~ Number Guessing Game ~~~~~\n"

# username login
echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'" | xargs)

# if user doesn't exist, insert
if [[ -z $USER_ID ]]
then
  $PSQL "INSERT INTO users(username) VALUES('$USERNAME');"
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'" | xargs)
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE user_id = $USER_ID" | xargs)
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id = $USER_ID" | xargs)
  if [[ -z $BEST_GAME ]]
  then
    BEST_GAME=0
  fi
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# number guessing game
SECRET_NUMBER=$((RANDOM % 1000 + 1))
NUMBER_OF_GUESSES=0

echo -e "\nGuess the secret number between 1 and 1000:"
while true
do
  read INPUT

  if [[ ! $INPUT =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi
	
  NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES + 1))

  if [[ $INPUT -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    continue
  fi
  
  if [[ $INPUT -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
    continue
  fi
  
  if [[ $INPUT -eq $SECRET_NUMBER ]]
  then
    $PSQL "UPDATE users SET games_played = games_played + 1 WHERE username = '$USERNAME';" > /dev/null
    $PSQL "INSERT INTO games(number_of_guesses, user_id) VALUES($NUMBER_OF_GUESSES, $USER_ID);" > /dev/null
    echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
    break
  fi
done