<?php 

class Cards { 

    private const ranks = [2,3,4,5,6,7,8,9,10,"Jack","Queen","King","Ace"]; 

    private const suits = ["Hearts","Diamonds","Clubs","Spades"]; 
    private $rank; 
    private $suit; 

    public function __construct($rank = 0, $suit = 0){ 

        $this->rank=$rank; 

        $this->suit=$suit; 

    } 
    public function getRank() 

    { 

        return Cards::ranks[$this->rank]; 

    } 

    public function getSuit() 

    { 

        return Cards::suits[$this->suit]; 

    } 
    public function __toString() 

    { 

        return "{$this->getRank()} of {$this->getSuit()}\n"; 

    } 

} 
$card1 = new Cards(12,3); 


$card2 = new Cards(12,0); 


print $card1."\n"; 

print $card2."\n"; 
public static function eq(Cards $a, Cards $b) 

    { 

        if($a->rank == $b->rank){ 

            return true; 

        } 

        else { 

            return false; 

        } 

    } 
    public static function gt(Cards $a, Cards $b) 

    { 

        if($a->rank > $b->rank){ 

            return true; 

        } 

        else { 

            return false; 

        } 

    } 
    public static function lt(Cards $a, Cards $b) 

    { 

        if($a->rank < $b->rank){ 

            return true; 

        } 

        else { 

            return false; 

        } 

    } 
    $card1 = new Cards(12,3); 

$card2 = new Cards(12,0); 

print $card1."\n"; 

print $card2."\n"; 

if(Cards::eq($card1, $card2)){ 

    echo "$card1 is equal rank to $card2\n"; 

} 

else{ 

    echo "$card1 is not equal rank to $card2\n"; 

} 

if(Cards::lt($card1, $card2)){ 

    echo "$card1 is less rank than $card2\n"; 

} 

if(Cards::gt($card1, $card2)){ 

    echo "$card1 is greater rank than $card2\n"; 

} 

?>