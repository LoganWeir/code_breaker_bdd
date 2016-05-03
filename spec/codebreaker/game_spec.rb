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

			before(:each) do

				game.start('1234')

			end

			context "with no matches" do

				it "sends a mark with ''" do

					expect(test_output).to receive(:puts).with('')

					game.guess('5555')

				end

			end

			context 'with 1 number match' do

				it "sends a mark with '-'" do

					expect(test_output).to receive(:puts).with('-')

					game.guess('4567')

				end

			end

			context 'with 1 exact match' do

				it "sends a mark with '+'" do

					expect(test_output).to receive(:puts).with('+')

					game.guess('1567')

				end

			end

			context 'with 2 number matches' do

				it "sends a mark with '--'" do

					expect(test_output).to receive(:puts).with('--')

					game.guess('6712')

				end

			end

			context 'with 1 number and 1 exact match, in order' do

				it "sends a mark with '+-'" do

					expect(test_output).to receive(:puts).with('+-')

					game.guess('2535')

				end

			end

		end

	end

end



