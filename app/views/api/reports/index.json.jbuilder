json.reports do
  json.array! @reports, partial: 'report', as: :report
end
json.current_page @reports.current_page
json.total_pages @reports.total_pages
json.is_last_page @reports.last_page?
json.limit_value @reports.limit_value
json.total_count @reports.total_count