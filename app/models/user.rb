class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :username, :hometown, :name, :picture
  validates :username, uniqueness: true, presence: true

  has_many :posts, dependent: :destroy
end
