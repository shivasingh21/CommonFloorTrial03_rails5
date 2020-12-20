class Property < ApplicationRecord
  belongs_to :user

  def self.property_search(search_params)

      properties = Property.all
      properties = properties.where(property_type: search_params[:property_type]) if search_params[:property_type].present? && search_params[:property_type] != "Property"
      properties = properties.where(property_status: search_params[:property_status]) if search_params[:property_status].present? && search_params[:property_status] != "Status"
      properties = properties.where(location: search_params[:location]) if search_params[:location].present? && search_params[:location] != "Location"

    return properties
  end
end
