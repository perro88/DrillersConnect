class Job < ApplicationRecord
  has_many :job_users, dependent: :destroy
  has_many :users, through: :job_users
  belongs_to :user
end
