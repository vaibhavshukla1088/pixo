class Service::Customservice < ApplicationRecord
    validates :heading, :service_first, :service_second, :service_third, presence: :true
end
