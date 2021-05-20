class Information < ApplicationRecord
  belongs_to :user, dependent: :destroy

  # def self.gets_current_information(id)
  #   @all_information = Information.where(user_id: id)
  #   return @all_information.last
  # end

  # def self.gets_previous_information(id)
  #   @all_information = Information.where(user_id: id)
  #   @all_information.slice(1, @all_information.length - 1)
  # end

  def self.gets_current_information(user_id)
    Information.where(user_id: user_id).last
  end

  def self.gets_previous_information(user_id)
    current_information = gets_current_information(user_id)
    Information.where(user_id: user_id).where.not(id: current_information.id)
  end
end
