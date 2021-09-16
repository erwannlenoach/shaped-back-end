class User < ApplicationRecord
  has_many :items
  has_one :carts
  has_many :messages
  has_many :conversations_as_contact1, foreign_key: 'contact1_id', class_name: "Conversation"
  has_many :conversations_as_contact2, foreign_key: 'contact2_id', class_name: "Conversation"
  has_many :comments
  has_many :ratings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
        
end
