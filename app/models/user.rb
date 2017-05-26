class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_favorites 
  has_many :favorites, :through => :user_favorites, :source => :song
  has_many :accepted_licenses 
end
