json.extract! reaction, :id, :kind, :usser_id, :poost_id, :created_at, :updated_at
json.url reaction_url(reaction, format: :json)
