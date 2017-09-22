json.groups do
  json.array! @groups, partial: 'group', as: :group
end
json.current_page @groups.current_page
json.total_pages @groups.total_pages
json.is_last_page @groups.last_page?
json.limit_value @groups.limit_value
json.total_count @groups.total_count