Feature: code breaker submits guess

	The code breaker submits a guess of four numbers. The game marks the guess 
	with + and - signs.

	For each number in the guess that matches the value and position of a number 
	in the code, the mark includes a + sign. For each number in the guess that 
	matches a value but not a position in the code, the mark includes a - sign.

	Scenario Outline: submit guess

		Given the secret code is "<code>"

		When I guess "<guess>"

		Then the mark should be "<mark>"

		Scenarios: all numbers correct

			|code|guess|mark|
			|1234|1234|++++|
			|1234|1243|++--|
			|1234|1432|+---|
			|1234|4321|----|

		Scenarios: 3 numbers correct

			|code|guess|mark|
			|1234|1235|+++|
			|1234|1253|++-|
			|1234|1532|+--|
			|1234|5321|---|

		Scenarios: 2 numbers correct

			|code|guess|mark|
			|1234|1256|++|
			|1234|1562|+-|
			|1234|5612|--|

		Scenarios: 1 number correct

			|code|guess|mark|
			|1234|1567|+|
			|1234|5671|-|








