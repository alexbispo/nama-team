require_relative 'nama_team'

RSpec.describe NamaTeam do 
	
	it "should print 'Nama' when find multiples of 5" do 
		limit = 100
		numbers = NamaTeam.go_until limit
		for i in (1..limit)
			next if i % 35 == 0

			if i % 5 == 0
				expect(numbers[i - 1]).to eq("Nama")
			end
		end

	end

	it "should print 'Team' when find multiples of 7" do 
		limit = 100
		numbers = NamaTeam.go_until limit
		for i in (1..limit)
			next if i % 35 == 0
			
			if (i % 7 == 0)
				expect(numbers[i - 1]).to eq("Team")
			end
		end

	end

	it "should print 'Nama Team' when find multiples of 35" do 
		limit = 100
		numbers = NamaTeam.go_until limit
		for i in (1..limit)			
			if (i % 35 == 0)
				expect(numbers[i - 1]).to eq("Nama Team")
			end
		end

	end

end