class PixoaticsController < ApplicationController
  def home
  end

  def service
  end

  def onDemand
  end
  
  def demandForm
      @model_name = OnDemand::Form.new(model_name_params)
      respond_to do |format|
        if @model_name.valid?
          if ExampleMailer.with(resource: @model_name).resource_email.deliver_now
            format.json { render json: { success: true } }
          else
            format.json { render json: { success: false, errors: @model_name.errors.full_messages } }
          end
        else
          format.json { render json: { success: false, errors: @model_name.errors.full_messages } }
        end
      end
  end          
  
  def reactdevelopment
      @model_name = OnDemand::Form.new
  end   
  
  def rordeveloper
  end

  def aboutUs
  end

  def QA
  end

  def UI
  end

  def career
      @jobopening_obj = JobOpening.where(is_active: true)
      @apply_obj = Applyform.new
  end

  def jsdevelopment
  end

  def contactUs
  end

  def contactUsForm
    @model_name = Contact.new(contact_params)
      respond_to do |format|
        if @model_name.valid?
          if ExampleMailer.with(resource: @model_name).contact_us_email.deliver_now
            format.json { render json: { success: true } }
          else
            format.json { render json: { success: false, errors: @model_name.errors.full_messages } }
          end
        else
          format.json { render json: { success: false, errors: @model_name.errors.full_messages } }
        end
      end
  end

  def apply_form
    @apply_obj = Applyform.new(apply_form_params)
      respond_to do |format|
        if @apply_obj.valid?
          if ExampleMailer.with(resource: @apply_obj).career_email.deliver_now
            format.json { render json: { success: true }}
          else
            format.json { render json: { success: false, errors: @apply_obj.errors.full_messages }}
          end
        else
          format.json { render json: { success: false, errors: @apply_obj.errors.full_messages }}
        end
      end 
  end

  private

  def model_name_params
  # if params[:on_demand_form].present?
  #   params.require(:on_demand_form).permit(:full_name, :email, :country, :skype, :technologies, :resources, :message, :phone, :country_code)
  # else
  #   params.permit(:full_name, :email, :country, :skype, :technologies, :resources, :message, :phone, :country_code) 
  # end
  params.permit(:full_name, :email, :country, :skype, :technologies, :resources, :message, :phone, :country_code)
  
  end

  def contact_params
    params.permit(:name, :email, :country, :skype, :message, :attachment)
  end

  def apply_form_params
    params.require(:applyform).permit(:full_name, :email_address, :contact_number, :position, :experience, :current_ctc, :notice_period, :resume, :skill, :message, :pixoatic_terms)
  end
end