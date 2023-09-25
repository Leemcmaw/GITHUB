<?php
class Deck { 

    protected $cards = []; 

    public function __construct()    

    { 

        for($suit=0; $suit<4; $suit++){ 

            for($rank=0; $rank<13; $rank++){ 

                $this->cards[] = new Cards($rank,$suit); 

            } 

        } 

    } 

} 

public function deal() 

{ 

    return array_pop($this->cards); 

} 
    public function isEmpty() 

    { 

        return count($this->cards) == 0; 

    } 
    public function shuffle() 

    { 

        return shuffle($this->cards); 

    } 
    public function __toString() 

    { 

        $output = ""; 

        foreach($this->cards as $card){ 

            $output .= $card ."\n"; 

        } 

        return $output; 

    } 
    $deck1 = new Deck(); 

print $deck1; 

$deck1->shuffle(); 

$card1 = $deck1->deal(); 

$card2 = $deck1->deal(); 

print $card1; 

print $card2; 

?>