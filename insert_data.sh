#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

$PSQL "TRUNCATE teams,games"


cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  WINNER=$(echo $WINNER | xargs)
  OPPONENT=$(echo $OPPONENT | xargs)
  
  if [[ $WINNER != "winner" ]]
  then
    #get winner id
    WINNER_ID=$($PSQL "select team_id from teams where name = '$WINNER'")
    if [[ -z $WINNER_ID ]]
    then 
      INSERT_TEAM_WINNER=$($PSQL "insert into teams(name) values ('$WINNER')") 
      if [[ $INSERT_TEAM_WINNER == "INSERT 0 1" ]]
      then
        echo "Inserted into team : $WINNER"
      fi 
    fi
  fi  
    if [[ $OPPONENT != "opponent" ]]
    then
      OPPONENT_ID=$($PSQL "select team_id from teams where name = '$OPPONENT'")
      if [[ -z $OPPONENT_ID ]]
      then 
        INSERT_TEAM_OPPONENT=$($PSQL "insert into teams(name) values ('$OPPONENT')") 
        if [[ $INSERT_TEAM_OPPONENT == "INSERT 0 1" ]]
        then
          echo "Inserted into team : $OPPONENT"
        fi 
      fi
    
    fi
    WINNER_ID=$($PSQL "select team_id from teams where name = '$WINNER'")
    OPPONENT_ID=$($PSQL "select team_id from teams where name = '$OPPONENT'")

    echo "winner_id is : $WINNER_ID \n opponent_id is : $OPPONENT_ID"
  if [[ -n $WINNER_ID && -n $OPPONENT_ID ]];
  then
    INSERT_GAMES=$($PSQL "insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)" )
    
  fi  
done
# Do not change code above this line. Use the PSQL variable above to query your database.
