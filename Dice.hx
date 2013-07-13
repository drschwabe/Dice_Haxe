class Dice {
	static function main() {

		//Define the variables: 
		var SIDES = 6; 

		function Display(screen) {

			if (screen == 'start') {
				Sys.println("Welcome to DICE.  Are you ready to roll?");
			}
		}

		function Ai() {

			//Define actions: 
			function roll() {
				//For now just return the total number of sides on this dice: 
				return SIDES; 
			}

			//Ai starts up: 
			Display('start'); 
			
		}

		Ai(); 
	}
}