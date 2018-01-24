json.array!(@contamination_reports) do |contamination_report|
  json.extract! contamination_report, :id, :survivor_id
  json.url contamination_report_url(contamination_report, format: :json)
end
