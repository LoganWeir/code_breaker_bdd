require 'spec_helper'

module CodeBreaker

	describe Game do

		describe "#start" do

			let(:test_output) { double('output').as_null_object }

			let(:game) { Game.new(test_output) }

			it "sends a welcome message" do

				expect(test_output).to receive(:puts).with("Welcome to Codebreaker!")

				game.start

			end

			it "prompts for the first game" do

				expect(test_output).to receive(:puts).with("Enter Guess:")

				game.start

			end

		end

	end

end