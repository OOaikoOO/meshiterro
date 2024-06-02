json.data do
  json.items do
    json.array!(@post_images) do |post_image|
      json.id post_image.id
      json.user do
        json.name post_image.user.name

      end
      json.image url_for(post_image.image)
      json.shop_name post_image.shop_name
      json.caption post_image.caption
      json.address post_image.address
      json.latitude post_image.latitude
      json.longitude post_image.longitude
    end  
  end
end