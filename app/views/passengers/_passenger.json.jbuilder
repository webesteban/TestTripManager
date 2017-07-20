json.extract! passenger, :id, :first_name, :last_name, :identification, :enabled, :created_at, :updated_at
json.url passenger_url(passenger, format: :json)
