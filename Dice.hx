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
			
			} else if (screen == 'noRoll') {
				Sys.println("Why u no wanna play dice?\n\n"); 
			}
		}

		function Input() {
			var userInput = Sys.stdin().readLine(); 
			return userInput;
		}

		function Ai() {

			//Define actions: 
			function roll() {
				//Generate a random number from 1 to 6:  
				var computation = Math.ceil(Math.random() * SIDES - 1) + 1; 

				//Convert to string and return: 
				return Std.string(computation); 
			}

			//Ai starts up: 
			Display('start'); 

			//Ask user for input: 
			var readyAnswer = Input(); 

			//Process input: 
			if (readyAnswer == 'r' || readyAnswer == 'R') {

				//Tell user what is going on:
				Display('roll'); 

				//Perform dice roll:
				diceResult = roll();

				//Send result to the Display: 
				Display(diceResult); 

			} else {

				//Say bye: 
				Display('noRoll'); 
			}

		}

		Ai(); 
	}
}