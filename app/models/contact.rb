class Contact < ActiveRecord::Base
    validates :name, presence: true
    validates :email, presence: true
    validates :concerns, presence: true
end