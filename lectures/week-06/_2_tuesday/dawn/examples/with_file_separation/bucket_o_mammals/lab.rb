# bucket_o_mammals/lab.rb

require_relative "dog"

class Lab < Dog

	def initialize(color,weight,length)
		puts "I'm aLabbb"
		super("Lab",color,weight,length,"USA")
	end

end