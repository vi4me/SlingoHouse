json.all_products do
  json.array! @products, partial: 'all_products', as: :all_products
end
json.current_page @products.current_page
json.total_pages @products.total_pages
json.is_last_page @products.last_page?
json.limit_value @products.limit_value
json.total_count @products.total_count