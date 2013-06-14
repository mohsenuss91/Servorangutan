class Survey < ActiveRecord::Base
  has_many :questions
  belongs_to :user
  has_many :completions
  has_many :users, :through => :completions
end
