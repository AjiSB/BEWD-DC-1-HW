class SecretNumber
# this class will generate our secret number for us
  def initialize
	@secret_number_array = (1..10).to_a
  end	

  def get_random_number
	@secret_number_array.sample 
  end	
end
