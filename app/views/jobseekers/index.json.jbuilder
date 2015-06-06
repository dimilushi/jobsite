json.array!(@jobseekers) do |jobseeker|
  json.extract! jobseeker, :id, :business_name, :personal_name, :address, :postcode, :city, :phone, :website, :email, :photo, :experience, :cv, :status, :text
  json.url jobseeker_url(jobseeker, format: :json)
end
