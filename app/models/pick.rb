class Pick < ActiveRecord::Base
  has_many :cards, dependent: :destroy
  has_many :users, through: :cards, dependent: :destroy
end
