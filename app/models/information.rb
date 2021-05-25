class Information < ApplicationRecord
  belongs_to :user

  def self.gets_current_information(user_id)
    Information.where(user_id: user_id).last
  end

  def self.gets_previous_information(user_id)
    current_information = gets_current_information(user_id)
    Information.where(user_id: user_id).where.not(id: current_information.id) unless current_information.nil?
  end
end
