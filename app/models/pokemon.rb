class Pokemon < ActiveRecord::Base

  def self.save_data_from_api
   response = HTTParty.get("")
   pokemon = response.each { |row| row[""] }
 end
end
