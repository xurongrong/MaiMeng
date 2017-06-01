# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Initialize Admin User
if User.find_by(email: "admin@gmail.com").nil?
u = User.new
u.email = "admin@gmail.com"           # 可以改成自己的 email
u.password = "123456"                # 最少要六码
u.password_confirmation = "123456"   # 最少要六码
u.is_admin = true
u.save
puts "Admin 已经建立好了，账号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end

# puts "这个seeds文件可以自动建立一个商品分类"
#
# create_Category = for i in 1..10 do
#   Category.created! (category_id:)[1..4],name:"个人定制",情侣定制","静态表情","动态表情"]
# end
#
# Category id: 1, name: "个人定制"
# Category id: 2, name: "情侣定制"
# Category id: 3, name: "静态表情"
# Category id: 4, name: "动态表情"
#
# puts "categories created."
