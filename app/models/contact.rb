class Contact < ActiveRecord::Base
    VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :name, length: {maximum:20}, presence: true
    validates :email, format: { with: VALID_EMAIL_REGEX, allow_blank: true }, presence: true
    validates :content, presence: true
end
