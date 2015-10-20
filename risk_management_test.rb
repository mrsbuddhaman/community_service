require_relative "risk_management.rb"
require "minitest/autorun"
require 'date'

class Risk_management < Minitest::Test



	def test_for_hours_remaining
		assert_equal(18.75, hours_remaining(["1000000","Wbg","111-111","","75","56.25","9.16.15","","","","","","","","","Taylor",""]))

	end


	def test_for_days_left
		today = Date.today
		orig_date = "10.17.2015"
	
	modified_orig_date_array = orig_date.split(".")
	modified_orig_date = modified_orig_date_array[2] + "." + modified_orig_date_array[0]+ "." + modified_orig_date_array[1]
	date_difference = (today - Date.parse(modified_orig_date)).to_i
	puts date_difference	
		assert_equal(-31 - date_difference, days_left(["1000000","Wbg","111-111","","75","56.25","9.16.15","","","","","","","","","Taylor",""]))
	end

end



