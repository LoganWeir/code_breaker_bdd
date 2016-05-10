require 'spec_helper'

module CodeBreaker

	describe Game do

		let(:test_output) { double('output').as_null_object }

		let(:game) { Game.new(test_output) }

		describe "#start" do

			it "sends a welcome message" do

				expect(test_output).to receive(:puts).with("Welcome to Codebreaker!")

				game.start('1234')

			end

			it "prompts for the first game" do

				expect(test_output).to receive(:puts).with("Enter Guess:")

				game.start('1234')

			end

		end

		describe "#guess" do

			it 'sends the mark to the output' do

				game.start('1234')

				expect(test_output).to receive(:puts).with("++++")

				game.guess('1234')

			end

		end

	end

end



