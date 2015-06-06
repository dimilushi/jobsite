json.array!(@vacancies) do |vacancy|
  json.extract! vacancy, :id, :title, :text, :salary, :salary_type, :schedule, :photo, :city, :postcode, :category, :status
  json.url vacancy_url(vacancy, format: :json)
end
