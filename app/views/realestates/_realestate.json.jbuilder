json.extract! realestate, :id, :title, :address, :price, :desc, :map, :toilet, :room, :feat_air_conditioner, :feat_broadband, :feat_hot_water, :feat_garage, :feat_heater, :created_at, :updated_at
json.url realestate_url(realestate, format: :json)
