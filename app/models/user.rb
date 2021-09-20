class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  has_many :items
  has_one :carts
  has_many :messages
  has_many :conversations_as_contact1, foreign_key: "contact1_id", class_name: "Conversation"
  has_many :conversations_as_contact2, foreign_key: "contact2_id", class_name: "Conversation"
  has_many :comments
  has_many :ratings

  # Inc`lude default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable, :validatable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  def jwt_payload
    super.merge("foo" => "bar")
  end

  def generate_jwt
    JWT.encode({ id: id, exp: 60.days.from_now.to_i }, Rails.application.secrets.secret_key_base)
  end
end
