class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :username, presence: true

  has_many :recipes
  has_many :shopping_lists

  after_create :create_shopping_list

  def create_shopping_list
    ShoppingList.create(user: self)
  end
end
