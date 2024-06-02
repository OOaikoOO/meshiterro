Geocoder.configure(
  lookup: :google,
  use_https: true,
  api_key: ENV["Geocoding_API_Key"],
  units: :km
)