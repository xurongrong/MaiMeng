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

#添加表情分类
Category.create!( :name => "免费表情" )
Category.create!( :name => "个人定制" )
Category.create!( :name => "情侣定制" )
Category.create!( :name => "动态表情" )
puts "添加商品分类。"

#添加表情数量
#前四个表情展示到首页一组
Product.create!(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201607/15/217d365b19.gif"))
Product.create!(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201603/23/32cd54c04c.gif"))
Product.create!(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201605/17/8413712bd4.gif"))
Product.create!(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201512/23/fa1bcfe7c4.gif"))
#免费表情 宋仲基二组
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201607/15/486b683703.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201607/15/6180544eb5.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201607/15/3d67cbde48.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201607/15/0975ba7d1c.gif"))
#免费表情 林更新三组
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201603/23/55442410a5.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201603/23/9d33109bfd.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201603/23/5a4ce9c782.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201603/23/89dd783256.gif"))
#免费表情 屌丝男士四组
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201605/17/579e7aec92.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201605/17/11ad1ff9d3.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201605/17/c443a6c8c6.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201605/17/c337b88b0b.gif"))
#免费表情 杨颖五组
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201509/30/84b9a8986f.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201509/30/4a4d8cab2b.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201509/30/a88c4ef776.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201509/30/0a0ec9479d.gif"))
#免费表情 跑男六组
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201512/23/db4a0e50bd.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201512/23/7fef66d498.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201512/23/fa1bcfe7c4.gif"))
Product.create!(title:"免费表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
image: open("http://img.wxcha.com/file/201512/23/6f70b521dd.gif"))
puts "添加六组表情包。"
