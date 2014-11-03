json.array!(@work_experiences) do |work_experience|
  json.extract! work_experience, :id, :company_name, :Company_description, :your_designation, :start_date, :end_date, :user_id
  json.url work_experience_url(work_experience, format: :json)
end
