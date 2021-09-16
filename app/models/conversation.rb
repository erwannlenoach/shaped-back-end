class Conversation < ApplicationRecord
    has_many :messages
    belongs_to :contact1, class_name: "User"
    belongs_to :contact2, class_name: "User"
end
