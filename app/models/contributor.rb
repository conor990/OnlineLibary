class Contributor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books   
end



# devise has a set of modules that can be added to a model to handle user authentication and authorization.

 # Defines the relationship with the books table, which is that a contributor can have many books