class Information < ApplicationRecord
  belongs_to :user

  # Gets the most recent Information for a user that matches that id
  def self.gets_current_information(user_id)
    Information.where(user_id: user_id).last
  end

  # Gets everything except the most recent Information that matches that users id
  # Unless the Users Information array is empty.
  def self.gets_previous_information(user_id)
    current_information = gets_current_information(user_id)
    Information.where(user_id: user_id).where.not(id: current_information.id) unless current_information.nil?
  end
end
