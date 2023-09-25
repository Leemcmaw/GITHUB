<?php

function availableLetters(&$pUsedLetters){

    $allLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ \n";
    echo("Letters available: " );
    if($pUsedLetters == null){
    
        print($allLetters);
    }else{
        for($i = 0; $i < count($pUsedLetters); $i++){
            $currentLetter = strtoupper($pUsedLetters[$i]);
            $allLetters = str_replace($currentLetter, '-', $allLetters);
        }
        echo $allLetters;
    }
    
    }
function getWords($number_of_letters){ 

    $wordsFound = []; 

    $file = fopen("words.txt","rb"); 

while ($word = fgets($file)){ 

        if(strlen(trim($word))==$number_of_letters) 

          $wordsFound[]=trim($word); 

    } 

    fclose($file); 

    return $wordsFound; 

} 
function replaceAll($guessString, $guessWord, $thisLetter){ 

    foreach(array_keys($guessWord,$thisLetter) as $index){ 

        $guessString[$index] = $thisLetter; 

    } 

    return $guessString; 

} 
const LIVES = 6; 

$lives = LIVES; 

$number_of_letters = readline("Enter the word length: "); 

$words = getWords($number_of_letters); 


printf ("There are %s words with %s letters\n", count($words), $number_of_letters); 


$guessWord = str_split($words[rand(0, count($words)-1)]); 

printf ("Guessing the word: %s\n", implode("",$guessWord)); 
$usedLetters = array();

$guessString = array_fill(0, $number_of_letters, "_");

while($lives > 0){ 
    availableLetters($usedLetters);

    $thisLetter = readline("Guess a letter: ");
    array_push($usedLetters,$thisLetter);

 


    if (in_array($thisLetter,$guessWord)){ 

        $guessString = replaceAll($guessString, $guessWord, $thisLetter); 

     

        if (implode($guessString) == implode($guessWord)){ 

            printf("You guessed the word!\n"); 

            break; 

        }  

    } else { 

        $lives = $lives-1; 

        printf("Letter not found.  Lives remaining %s \n", $lives); 
        
        }

    } 

    print(implode($guessString) . " \n"); 

  
    
    


if ($lives > 0) { 

    $player = readline("Enter player name for high score table: "); 

    $fout = fopen("hangmanScores.txt","ab"); 

    $score1 = $lives * $number_of_letters; 

    $scoreText = "$player\t$score1\n"; 

    print($scoreText); 


    fclose($fout); 
$file = 'hangmanScores.txt';
$searchfor = '';


// get the file contents, assuming the file to be readable (and exist)
$contents = file_get_contents($file);

// escape special characters in the query
$pattern = preg_quote($searchfor, '/');

// finalise the regular expression, matching the whole line
$pattern = "/^.*$pattern.*\$/m";

// search, and store all matching occurences in $matches
if(isset($player)){
echo"Player is found!!!\n";
$overall = $score1;
echo $player." Score is ".$overall;
}
if(preg_match_all($pattern, $contents, $matches)){
   echo "\nFound matches:\n";
   echo implode("\n", $matches[0]);
}
else{
   echo "\nNo matches found";
}


} 
?>