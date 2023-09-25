<?php
const BOARDSIZE = 5; 
const GUESSES = 10; 

$board = array_fill(0,BOARDSIZE,array_fill(0,BOARDSIZE,"🌫"));


print ("Let's play Battleships!\n"); 

print_board($board); 
function print_board($board){ 

    foreach($board as $row){ 

        foreach($row as $element){ 

            print("$element"); 

        } 

        print("\n"); 

    } 
}
    function random_pos(){ 

        return rand(0, BOARDSIZE-1);

    
    }  
    function random_pos1(){
        return rand(0,BOARDSIZE-1);
        
    }
    

    function random_pos2(){
        return rand(0,BOARDSIZE-1);
    }

    $ship_row1 = random_pos1();
    $ship_col1 = random_pos1();


    $ship_row2 = random_pos2();
    $ship_col2 = random_pos2();

    
    $ship_row = random_pos(); 
    $ship_col = random_pos(); 

    $ship_col3 = $ship_col1 -1; 
    $ship_col4 = $ship_col1 -2;
    
    $ship_col = $ship_col1 -1; 




    
    printf ("Battleship 1 at (%s,%s)\n",$ship_row,$ship_col); 
    printf ("Battleship 1 at (%s,%s)\n",$ship_row,$ship_col1); 
    print("");
printf("--------------------------------------------------------");
    printf ("\nBattleship 2 at (%s,%s)\n",$ship_row1 ,$ship_col1); 
    printf ("Battleship 2 at (%s,%s)\n",$ship_row1 ,$ship_col3); 
    printf ("Battleship 2 at (%s,%s)\n",$ship_row1 ,$ship_col4); 
    print("");
    printf("--------------------------------------------------------");

    printf ("\nBattleship 3 at (%s,%s)\n",$ship_row2,$ship_col2); 



    for($turn=1; $turn <= GUESSES; $turn++){ 

        $guess_row = readline("Guess a row: "); 
    
        $guess_col = readline("Guess a column: "); 
    
        if(($guess_row =="") || ($guess_col == "") || 
    
           ($guess_row < 0) || ($guess_col < 0) || 
    
           ($guess_row >= BOARDSIZE) || ($guess_col >= BOARDSIZE)) 
    
        { 
    
            print("Oops, that's not even in the ocean. \n"); 
    
        } else 
    
        if(($guess_row == $ship_row)&&($guess_col == $ship_col)||($guess_row == $ship_row)&&($guess_col == $ship_col1)||($guess_row == $ship_row1)&&($guess_col == $ship_col1)||($guess_row == $ship_row1)&&($guess_col == $ship_col3)||($guess_row == $ship_row1)&&($guess_col == $ship_col4)||($guess_row == $ship_row2)&&($guess_col == $ship_col2)){ 
    
            print ("Congratulations! You sunk my battleship!\n"); 
    
            $board[$guess_row][$guess_col] = " 💥"; 



        }else
        if(($guess_row == $ship_row)&&($guess_col == $ship_col)&&($guess_row == $ship_row)&&($guess_col == $ship_col1)&&($guess_row == $ship_row1)&&($guess_col == $ship_col1)&&($guess_row == $ship_row1)&&($guess_col == $ship_col3)&&($guess_row == $ship_row1)&&($guess_col == $ship_col4)&&($guess_row == $ship_row2)&&($guess_col == $ship_col2)){ 
            print("Well done all ships were sunk!");
        }
            
         
        

        else 
    
        if ($board[$guess_row][$guess_col] == "🌊") { 
    
            print("You guesses that one already. \n"); 
    
        } 
    
        else 
    
        { 
    
            print ("You missed my battleship!\n"); 
    
            $board[$guess_row][$guess_col] = "🌊"; 
    
            if ($turn == GUESSES){ 
    
                print("Game over!\n"); 
    
                $board[$ship_row][$ship_col][$ship_col1][$ship_row][$ship_col1][$ship_row1][$ship_col3][$ship_row1][$ship_col4][$ship_row1][$ship_col2][$ship_row2] = "⛴"; 

                
    
            }
    
        } 
    
        printf ("This was turn %s of %s\n",$turn,GUESSES); 
    
        print_board($board); 
    
    } 
    if(($guess_row == $ship_row)&&($guess_col == $ship_col)&&($guess_row == $ship_row)&&($guess_col == $ship_col1)&&($guess_row == $ship_row1)&&($guess_col == $ship_col1)&&($guess_row == $ship_row1)&&($guess_col == $ship_col3)&&($guess_row == $ship_row1)&&($guess_col == $ship_col4)&&($guess_row == $ship_row2)&&($guess_col == $ship_col2)){ 
        print("Well done all ships were sunk!");
    
    }


    

?>