class Pick < ActiveRecord::Base
  belongs_to :card
  belongs_to :user
end
