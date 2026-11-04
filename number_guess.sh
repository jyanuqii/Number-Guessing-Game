#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

USERNAME_SQL=$(printf "%s" "$USERNAME" | sed "s/'/''/g")

USER_ID=$($PSQL "select user_id from users where username='$USERNAME_SQL'")

if [[ -z $USER_ID ]]
then
  $PSQL "insert into users(username) values('$USERNAME_SQL')" > /dev/null
  USER_ID=$($PSQL "select user_id from users where username='$USERNAME_SQL'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "select count(*) from games where user_id=$USER_ID")
  BEST_GAME=$($PSQL "select min(number_of_guesses) from games where user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
NUMBER_OF_GUESSES=0

echo "Guess the secret number between 1 and 1000:"
read GUESS

while [[ $GUESS != $SECRET_NUMBER ]]
do
  if [[ ! $GUESS =~ ^-?[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    ((NUMBER_OF_GUESSES++))
  else
    echo "It's higher than that, guess again:"
    ((NUMBER_OF_GUESSES++))
  fi
  read GUESS
done

((NUMBER_OF_GUESSES++))

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"

$PSQL "insert into games(user_id, number_of_guesses) values($USER_ID, $NUMBER_OF_GUESSES)" > /dev/null
