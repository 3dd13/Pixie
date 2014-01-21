class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

         #admin@pixie.com
         #12345678
  has_many :garments
  has_many :messages
  has_many :subscriptions
  
end
