class Contact < ApplicationRecord
    before_save :downcase_email

    validates :name, presence: true
    validate :email_address_format
    validates :country, presence: true
    validates :message, presence: true
    has_one_attached :attachment

    def email_address_format
        if email.blank?
          errors.add(:email, "can't be blank")
        else !URI::MailTo::EMAIL_REGEXP.match?(email)
          errors.add(:email, "is invalid")
        end
    end

    def downcase_email
        self.email_address = email_address.downcase
    end
end
