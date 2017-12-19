class User < ActiveRecord::Base
  has_many :messages # 복수형으로 꼭 써야 한다. #User와 Message의 관계는 1대 N의 관계이다. # User has many messages #Message belongs to user
end
