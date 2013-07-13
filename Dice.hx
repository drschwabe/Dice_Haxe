class Dice {
	static function main() {

		//Define the variables: 
		var SIDES = 6; 
		var diceResult = null; 

		function Display(screen) {

			if (screen == 'start') {
				Sys.println("Welcome to DICE.  Are you ready to roll?\n(R)oll (E)xit");
			} else if (screen == 'roll') {
				Sys.println("Okay, about to roll!\n\n"); 
			} else if (screen == diceResult) {
				Sys.println("You rolled a " + diceResult + "\n\n"); 
			}
		}

		function Input() {
			var userInput = Sys.stdin().readLine(); 
			return userInput;
		}

		function Ai() {

			//Define actions: 
			function roll() {
				//For now just return the total number of sides on this dice: 
				return Std.string(SIDES); 
			}

			//Ai starts up: 
			Display('start'); 
			var readyAnswer = Input(); 

			if (readyAnswer == 'r' || readyAnswer == 'R') {

				//Tell user what is going on:
				Display('roll'); 

				//Perform dice roll:
				diceResult = roll();

				//Send result to the Display: 
				Display(diceResult); 
			}

		}

		Ai(); 
	}
}