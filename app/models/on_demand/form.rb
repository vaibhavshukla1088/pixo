class OnDemand::Form < ApplicationRecord
    before_save :downcase_email

    TECHNOLOGIES = ["Ruby on rails", "React native", "React Js", "QA / Tester", "UI/UX Designer"]
    RESOURCES = ["1", "2", "3", "4", "5+"]

    validates :full_name, presence: true
    validate :email_address_format
    validates :country, :technologies, :resources, :message, presence: true

    def downcase_email
        self.email_address = email_address.downcase
    end

    def email_address_format
        if email.blank?
          errors.add(:email, "can't be blank")
        else !URI::MailTo::EMAIL_REGEXP.match?(email)
          errors.add(:email, "is invalid")
        end
    end
end
  