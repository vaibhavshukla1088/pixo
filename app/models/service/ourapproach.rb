class Service::Ourapproach < ApplicationRecord
    has_one_attached :ourapproachimg

    validates :heading1, :description1, :heading2, :description2, :heading3, :description3, :heading4, :description4,
    :heading5, :description5, presence: :true
end
