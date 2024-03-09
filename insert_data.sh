#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS=, read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS;
 do
    if [[ $WINNER != "winner" ]]
      then
        #SEE if team exist
        WINNER_TEAM=$($PSQL "SELECT team_id FROM teams where name='$WINNER'");
        #if not exist
        if [[ -z $WINNER_TEAM ]]
          then
          #add team
            INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');");
            echo $INSERT_TEAM_RESULT;
          else
            echo "team $WINNER exists";
        fi
    fi

    if [[ $OPPONENT != "opponent" ]]
      then
        #SEE if team exist
        OPPONENT_TEAM=$($PSQL "SELECT team_id FROM teams where name='$OPPONENT'");
        #if not exist
        if [[ -z $OPPONENT_TEAM ]]
          then
          #add team
            INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');");
            echo $INSERT_TEAM_RESULT;
          else
            echo "team $WINNER exists";
        fi
    fi

    #get teams ids 
    WINNER_ID=$($PSQL "SELECT team_id FROM teams where name='$WINNER'");
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams where name='$OPPONENT'");
    
    #insert teams
    INSERT_GAME_RESULTS=$($PSQL "INSERT INTO games(year,round,winner_goals,opponent_goals,opponent_id,winner_id) VALUES('$YEAR','$ROUND','$WINNER_GOALS','$OPPONENT_GOALS','$OPPONENT_ID','$WINNER_ID')")
    
    if [[ -z $INSERT_GAME_RESULTS ]]
      then
        echo game not added
      else
        echo game added
    fi
done
