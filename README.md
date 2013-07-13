### Compile info ###

This script is coded in Haxe and targets Neko (a language with a  lightweight VM that makes it easy to make command line apps with Haxe). 


Install **[Haxe](http://haxe.org/download)**<br />(including Neko)<br /><br />
Clone repo and run: 


    haxe -main Dice -neko dice.n //Compiles to Neko
    nekotools boot dice.n //Converts to executable with embedded Neko VM
    


Run **dice.exe**! 


<br />
(tested on Windows only)
<br /><br />

**Helpful links**: <br />
http://haxe.org/doc/start/neko<br />
http://api.haxe.org


<br />



### Premise ###
This is a practice <del>Ruby</del> Haxe script.  To simulate... DICE. 
What can a die do?  Well. It can roll. 
What properties are of it?  It has 6 sides (typically, though some DnD ones have more).
What happens when a die is rolled?  It lands!  One one of the six sides.
The die then shows the result.  And the roll is complete.  
So we have a begin state (let's assume begin state is in your hand).
A rolling state.  Rolls typically take a few seconds. 
And the final result state.  In which the roll is complete, and the result is displayed for us all to see. 

<br />

### Execution Flow ###

Application's execution flow will go like this: 

--->**Ai**--->**Display**-->**Ai**--->**Input**--- (and repeat)

**Ai**() does the heavy lifting and logic. 

**Display**() renders stuff to the screen. 

**Input**() accepts user input, translates it for Ai. 

WTF?! To me it seems computers are more friendly if you play a game of ball with them. So I like to design apps based on this defined cycle in which the 'ball' (the point of execution) is tossed between three fundamental functions: Ai/Display/Input. Forming a simple and constant cyclic pattern that iterates indefinitely.  Gaining momentum and manifesting... FUN.



