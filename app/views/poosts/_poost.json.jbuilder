json.extract! poost, :id, :image, :description, :usser_id, :created_at, :updated_at
json.url poost_url(poost, format: :json)
