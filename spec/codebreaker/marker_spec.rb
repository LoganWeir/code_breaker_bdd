require 'spec_helper'

module CodeBreaker

	describe Marker do

		describe '#exact_match_count' do

			context 'with no matches' do

				it 'returns 0' do

					marker = Marker.new('1234', '5678')

					expect(marker.exact_match_count).to equal(0)

				end

			end

			context 'with 1 exact match' do

				it 'returns 1' do

					marker = Marker.new('1234', '1678')

					expect(marker.exact_match_count).to equal(1)

				end

			end

			context 'with 1 number match' do

				it 'returns 0' do

					marker = Marker.new('1234', '6781')

					expect(marker.exact_match_count).to equal(0)

				end

			end

			context 'with 1 number match and 1 exact match' do

				it 'returns 1' do

					marker = Marker.new('1234', '1782')

					expect(marker.exact_match_count).to equal(1)

				end

			end

		end

		describe '#number match count' do

			context 'with no matches' do

				it 'returns 0' do

					marker = Marker.new('1234', '5678')

					expect(marker.number_match_count).to equal(0)

				end

			end

			context 'with 1 number match' do

				it 'returns 1' do

					marker = Marker.new('1234', '5671')

					expect(marker.number_match_count).to equal(1)

				end

			end

		context 'with 1 exact match' do

				it 'returns 0' do

					marker = Marker.new('1234', '1678')

					expect(marker.number_match_count).to equal(0)

				end

			end

			context 'with 1 number match and 1 exact match' do

				it 'returns 1' do

					marker = Marker.new('1234', '1782')

					expect(marker.number_match_count).to equal(1)

				end

			end

			context 'with 1 exact match duplicated in guess' do

				it 'returns 0' do

					marker = Marker.new('1234', '1155')

					expect(marker.number_match_count).to equal(0)

				end

			end

		end

	end

end









