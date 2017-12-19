class Message < ActiveRecord::Base
  belongs_to :user #단수로 써야한다. #User와 Message의 관계는 1대 N의 관계이다. # User has many messages #Message belongs to user
end
