json.instructions do
  json.array! @instructions, partial: 'instruction', as: :instruction
end
json.current_page @instructions.current_page
json.total_pages @instructions.total_pages
json.is_last_page @instructions.last_page?
json.limit_value @instructions.limit_value
json.total_count @instructions.total_count