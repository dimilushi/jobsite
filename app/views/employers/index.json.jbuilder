json.array!(@employers) do |employer|
  json.extract! employer, :id, :business_name, :personal_name, :address, :postcode, :city, :phone, :website, :email, :logo, :text, :status
  json.url employer_url(employer, format: :json)
end
