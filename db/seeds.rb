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
# Category.create!( :name => "个人定制" )
# Category.create!( :name => "情侣定制" )
# Category.create!( :name => "动态表情" )
puts "添加商品分类。"

#添加多图表情
#前四个表情包展示到首页
# Product.create!(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
# image: open("http://img.wxcha.com/file/201607/15/217d365b19.gif"))
# Product.create!(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
# image: open("http://img.wxcha.com/file/201603/23/32cd54c04c.gif"))
# Product.create!(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
# image: open("http://img.wxcha.com/file/201605/17/8413712bd4.gif"))
# Product.create!(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1,
# image: open("http://img.wxcha.com/file/201512/23/fa1bcfe7c4.gif"))
p1 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:1,avatar: open("http://img.wxcha.com/file/201607/15/217d365b19.gif"))
Photo.create!(product_id:1,avatar: open("http://img.wxcha.com/file/201607/15/486b683703.gif"))
Photo.create!(product_id:1,avatar: open("http://img.wxcha.com/file/201607/15/0975ba7d1c.gif"))
p2 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:2,avatar: open("http://img.wxcha.com/file/201603/23/32cd54c04c.gif"))
Photo.create!(product_id:2,avatar: open("http://img.wxcha.com/file/201603/23/9d33109bfd.gif"))
Photo.create!(product_id:2,avatar: open("http://img.wxcha.com/file/201603/23/89dd783256.gif"))
p3 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:3,avatar: open("http://img.wxcha.com/file/201605/17/8413712bd4.gif"))
Photo.create!(product_id:3,avatar: open("http://img.wxcha.com/file/201605/17/c443a6c8c6.gif"))
Photo.create!(product_id:3,avatar: open("http://img.wxcha.com/file/201605/17/c337b88b0b.gif"))
p4 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:4,avatar: open("http://img.wxcha.com/file/201512/23/fa1bcfe7c4.gif"))
Photo.create!(product_id:4,avatar: open("http://img.wxcha.com/file/201512/23/fa1bcfe7c4.gif"))
Photo.create!(product_id:4,avatar: open("http://img.wxcha.com/file/201512/23/6f70b521dd.gif"))
#免费表情 宋仲基林更新4组
p5 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:5,avatar: open("http://img.wxcha.com/file/201607/15/486b683703.gif"))
Photo.create!(product_id:5,avatar: open("http://img.wxcha.com/file/201607/15/6180544eb5.gif"))
Photo.create!(product_id:5,avatar: open("http://img.wxcha.com/file/201607/15/3d67cbde48.gif"))
p6 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:6,avatar: open("http://img.wxcha.com/file/201607/15/0975ba7d1c.gif"))
Photo.create!(product_id:6,avatar: open("http://img.wxcha.com/file/201607/15/0975ba7d1c.gif"))
Photo.create!(product_id:6,avatar: open("http://img.wxcha.com/file/201607/15/0975ba7d1c.gif"))
p7 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:7,avatar: open("http://img.wxcha.com/file/201603/23/55442410a5.gif"))
Photo.create!(product_id:7,avatar: open("http://img.wxcha.com/file/201603/23/9d33109bfd.gif"))
Photo.create!(product_id:7,avatar: open("http://img.wxcha.com/file/201603/23/5a4ce9c782.gif"))
p8 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:8,avatar: open("http://img.wxcha.com/file/201603/23/89dd783256.gif"))
Photo.create!(product_id:8,avatar: open("http://img.wxcha.com/file/201603/23/89dd783256.gif"))
Photo.create!(product_id:8,avatar: open("http://img.wxcha.com/file/201603/23/89dd783256.gif"))
#免费表情 屌丝男士杨颖4组
p9 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:9,avatar: open("http://img.wxcha.com/file/201605/17/579e7aec92.gif"))
Photo.create!(product_id:9,avatar: open("http://img.wxcha.com/file/201605/17/11ad1ff9d3.gif"))
Photo.create!(product_id:9,avatar: open("http://img.wxcha.com/file/201605/17/c443a6c8c6.gif"))
p10 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:10,avatar: open("http://img.wxcha.com/file/201605/17/c337b88b0b.gif"))
Photo.create!(product_id:10,avatar: open("http://img.wxcha.com/file/201605/17/c337b88b0b.gif"))
Photo.create!(product_id:10,avatar: open("http://img.wxcha.com/file/201605/17/c337b88b0b.gif"))
p11 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:11,avatar: open("http://img.wxcha.com/file/201509/30/84b9a8986f.gif"))
Photo.create!(product_id:11,avatar: open("http://img.wxcha.com/file/201509/30/4a4d8cab2b.gif"))
Photo.create!(product_id:11,avatar: open("http://img.wxcha.com/file/201509/30/a88c4ef776.gif"))
p12 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:12,avatar: open("http://img.wxcha.com/file/201509/30/0a0ec9479d.gif"))
Photo.create!(product_id:12,avatar: open("http://img.wxcha.com/file/201509/30/0a0ec9479d.gif"))
Photo.create!(product_id:12,avatar: open("http://img.wxcha.com/file/201509/30/0a0ec9479d.gif"))
#免费表情 跑男2组
p13 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:13,avatar: open("http://img.wxcha.com/file/201512/23/db4a0e50bd.gif"))
Photo.create!(product_id:13,avatar: open("http://img.wxcha.com/file/201512/23/7fef66d498.gif"))
Photo.create!(product_id:13,avatar: open("http://img.wxcha.com/file/201512/23/fa1bcfe7c4.gif"))
p14 = Product.create(title:"最热表情", description: "免费表情", quantity:9999, price:0, category_id: 1)
Photo.create!(product_id:14,avatar: open("http://img.wxcha.com/file/201512/23/6f70b521dd.gif"))
Photo.create!(product_id:14,avatar: open("http://img.wxcha.com/file/201512/23/6f70b521dd.gif"))
Photo.create!(product_id:14,avatar: open("http://img.wxcha.com/file/201512/23/6f70b521dd.gif"))
puts "添加14组表情包。"
