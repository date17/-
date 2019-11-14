# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.create(name:'FF')
Iteminfo.create(name:'ファミチキ', path:'ファミチキ.jpg', itemtime:8, genre_id:1)
Itemcreate.create(iteminfo_id:1, createcount:2, buycount:2)
Iteminfo.create(name:'スパイシーチキン', path:'スパイシーチキン.jpg', itemtime:6, genre_id:1)
