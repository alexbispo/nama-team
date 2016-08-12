module NamaTeam

	def self.go_until(limit)
		(1..limit).map do |n|
			if n % 35 == 0
				"Nama Team"
			elsif n % 5 == 0
				"Nama"
			elsif n % 7 == 0 
				"Team"
			else
				n
			end

		end

	end

end

if __FILE__ == $0
	str = NamaTeam.go_until(100).each.inject("") { |str, n| str << "#{n}, "}
	puts str.chop.chop
end
