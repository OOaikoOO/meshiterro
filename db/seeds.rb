# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

olivia = User.create(name: 'olivia', email: 'olivia@example.com', password: 'password')
james = User.create(name: 'james', email: 'james@example.com', password: 'password')
lucas = User.create(name: 'lucas', email: 'lucas@example.com', password: 'password')

PostImage.find_or_create_by!(shop_name: "Cavello") do |post_image|
  post_image.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/cafe_coffee_cup.png"), filename:"cafe_coffee_cup.png")
  post_image.caption = "大人気のカフェです。"
  post_image.address = "東京都千代田区丸の内1丁目" # 追記
  post_image.user = olivia
end

PostImage.find_or_create_by!(shop_name: "和食屋せん") do |post_image|
  post_image.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/teisyoku_hiyayakko.png"), filename:"teisyoku_hiyayakko.png")
  post_image.caption = "日本料理は美しい！"
  post_image.address = "愛知県名古屋市中村区名駅１丁目１−４" # 追記
  post_image.user = james
end

PostImage.find_or_create_by!(shop_name: "ShoreditchBar") do |post_image|
  post_image.image = ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/food_tacos.png"), filename:"food_tacos.png")
  post_image.caption = 'メキシコ料理好きな方にオススメ！'
  post_image.address = "大阪府大阪市淀川区西中島5-16-1" # 追記
  post_image.user = lucas
end