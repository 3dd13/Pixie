class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

         #admin@pixie.com
         #12345678
  has_many :garment
  has_many :message
  has_many :subscrition
  
end
