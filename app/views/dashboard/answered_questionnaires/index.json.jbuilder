json.array!(@answered_questionnaires) do |answered_questionnaire|
  json.extract! answered_questionnaire, :id, :questioned, :profile, :conclusions
  json.url answered_questionnaire_url(answered_questionnaire, format: :json)
end
