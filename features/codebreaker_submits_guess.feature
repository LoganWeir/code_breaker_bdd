Feature: code breaker submits guess

	The code breaker submits a guess of four numbers. The game marks the guess 
	with + and - signs.

	For each number in the guess that matches the value and position of a number 
	in the code, the mark includes a + sign. For each number in the guess that 
	matches a value but not a position in the code, the mark includes a - sign.

	Each position in the secret code can only be guessed once, with plus signs prioritized. Thus with a guess of 1134 against a secret code of 1234 three plus signs would be returned, while the number match in the second position would be ignored.

	Scenario Outline: submit guess

		Given the secret code is "<code>"

		When I guess "<guess>"

		Then the mark should be "<mark>"


		Scenarios: all numbers correct

			|code|guess|mark|
			|1234|1234|++++|
			|1234|1243|++--|
			|1234|4213|+---|
			|1234|4321|----|

		Scenarios: 3 numbers correct

			|code|guess|mark|
			|1234|1235|+++|
			|1234|1253|++-|
			|1234|1523|+--|
			|1234|5321|---|

		Scenarios: 2 numbers correct

			|code|guess|mark|
			|1234|1256|++|
			|1234|2267|+|
			|1234|5612|--|

		Scenarios: 1 number correct

			|code|guess|mark|
			|1234|1567|+|
			|1234|4567|-|

		Scenarios: no matches

			|code|guess|mark|
			|1234|5678||

		Scenarios: matches with duplicates

			|code|guess|mark|
			|1234|1155|+|
			|1234|5115|-|
			|1134|1155|++|
			|1134|5115|+-|
			|1134|5511|--|
			|1134|1115|++|
			|1134|5111|+-|








