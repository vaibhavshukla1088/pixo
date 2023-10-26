class Applyform < ApplicationRecord
    before_save :downcase_email

    POSITION = ["Ruby on rails","React native","React Js","QA","Ui/UX","BDE","BDM","HR","SEO"]
    EXPERIENCE = ["6 Months", "1 Year", "2 Years", "3 Years", "4 Years", "5 Years", "5+ Year"]
    
    NOTICE_PERIOD = ["Less then 15 days","15 Days-30 Days","60 Days","90 Days"]
    validates :resume, content_type: [ :pdf ]
    validates :full_name, presence: true  
    validate :email_address_format
  
    validates :contact_number, :position, :experience, :current_ctc, :notice_period, :skill, :message, :resume, presence: true
  
    has_one_attached :resume

    def email_address_format
      if email_address.blank?
        errors.add(:email_address, "can't be blank")
      else !URI::MailTo::EMAIL_REGEXP.match?(email_address)
        errors.add(:email_address, "is invalid")
      end
    end
  
    def downcase_email
      self.email_address = email_address.downcase
    end
end
