class ExampleMailer < ApplicationMailer
  default from: 'no-reply@accounts.google.com'
    def resource_email
      @resource = params[:resource]
      mail(to: 'support@pixoatic.com', subject: 'Resources Required- Pixoatic website')
    end

    def contact_us_email
      @resource = params[:resource]
      mail(to: 'support@pixoatic.com', subject: 'Contact Us Details- Pixoatic website')
    end

    def career_email
      @resource = params[:resource]
      mail(to: 'hr@pixoatic.com', subject: 'Canditate Details- Pixoatic website')
    end
end
  