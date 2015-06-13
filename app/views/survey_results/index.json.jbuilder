json.array!(@survey_results) do |survey_result|
  json.extract! survey_result, :id, :mobile, :liberty, :sexy, :wigs_wired
  json.url survey_result_url(survey_result, format: :json)
end
