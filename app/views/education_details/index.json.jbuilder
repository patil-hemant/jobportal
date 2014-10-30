json.array!(@education_details) do |education_detail|
  json.extract! education_detail, :id, :name, :institute, :passout_year, :score, :user_id
  json.url education_detail_url(education_detail, format: :json)
end
