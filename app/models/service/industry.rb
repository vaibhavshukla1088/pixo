class Service::Industry < ApplicationRecord
    validates :heading, :description, presence: :true

    has_one_attached :industryservice
end
