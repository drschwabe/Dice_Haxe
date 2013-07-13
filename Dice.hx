class Dice {
	static function main() {

		//Define the variables: 
		var SIDES = 6; 

		function Display(screen) {

			if (screen == 'start') {
				Sys.println("Welcome to DICE.  Are you ready to roll?\n(R)oll (E)xit");
			} else if (screen == 'roll') {
				Sys.println("Okay, about to roll!\n\n"); 
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
				return SIDES; 
			}

			//Ai starts up: 
			Display('start'); 
			var readyAnswer = Input(); 

			if (readyAnswer == 'r' || readyAnswer == 'R') {
				Display('roll'); 
			}

		}

		Ai(); 
	}
}