class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :recipes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :username, presence: true

  has_many :recipes
  has_one :shopping_list
  has_many :doses_shopping_list, through: :shopping_list
  has_many :user_meal_planners
  
  after_create :create_shopping_list

  def create_shopping_list
    ShoppingList.create(user: self)
  end
end
