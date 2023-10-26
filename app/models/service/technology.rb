class Service::Technology < ApplicationRecord

    validates :heading1, :description1, :heading2, :description2, :heading3, :description3, :heading4, :description4, presence: :true

end
