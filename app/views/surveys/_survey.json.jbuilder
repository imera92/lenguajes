json.extract! survey, :id, :name, :code, :created_at, :updated_at
json.url survey_url(survey, format: :json)