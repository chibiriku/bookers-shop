# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
   email: 'admins@admin',
   password: 'testtest'
)

Customer.create!(
    email: "a@a",
    password: "testtest"
    )

Genre.create!(
              name: "推理",

            )

Genre.create!(
              name: "ホラー",

            )
Book.create!(
              genre_id: 1,
              image_id: nil,
              author: "佐野 零士",
              name: "白夜",
              synopsis: "本格ミステリーとは、謎解きとトリックに重きを置き、名探偵役が事件を解決する作風のこと。本作ではとある島に招かれた8人の男女と、島で出迎えた2人の召使いの全員が死に、事件が迷宮入りしかけたところですべての謎が解決します。
もはやミステリー小説の一般教養といってもいい作品、迷ったらぜひ読んでみてください。",
              price: 1000,
              is_active: true
             )
Book.create!(
              genre_id: 1,
              image_id: nil,
              author: "佐野 零士",
              name: "黒夜",
              synopsis: "本格ミステリーとは、謎解きとトリックに重きを置き、名探偵役が事件を解決する作風のこと。本作ではとある島に招かれた8人の男女と、島で出迎えた2人の召使いの全員が死に、事件が迷宮入りしかけたところですべての謎が解決します。
もはやミステリー小説の一般教養といってもいい作品、迷ったらぜひ読んでみてください。",
              price: 1000,
              is_active: true
             )
Book.create!(
            genre_id: 1,
            image_id: nil,
            author: "佐野 零士",
            name: "夕焼け",
            synopsis: "本格ミステリーとは、謎解きとトリックに重きを置き、名探偵役が事件を解決する作風のこと。本作ではとある島に招かれた8人の男女と、島で出迎えた2人の召使いの全員が死に、事件が迷宮入りしかけたところですべての謎が解決します。
もはやミステリー小説の一般教養といってもいい作品、迷ったらぜひ読んでみてください。",
            price: 1000,
            is_active: true
            )
Book.create!(
            genre_id: 1,
            image_id: nil,
            author: "佐野 零士",
            name: "神",
            synopsis: "本格ミステリーとは、謎解きとトリックに重きを置き、名探偵役が事件を解決する作風のこと。本作ではとある島に招かれた8人の男女と、島で出迎えた2人の召使いの全員が死に、事件が迷宮入りしかけたところですべての謎が解決します。
もはやミステリー小説の一般教養といってもいい作品、迷ったらぜひ読んでみてください。",
            price: 1000,
            is_active: true
            )