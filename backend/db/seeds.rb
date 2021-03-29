puts "Seeding..."

Gallery.destroy_all
User.destroy_all
Photo.destroy_all 

u1 = User.create( username: "Joe", password: "joe", email: "j@j.com")
u2 = User.create( username: "Preston", password: "preston", email: "p@p.com")
u3 = User.create( username: "Lanny", password: "lanny", email: "l@l.com")

g1 = u1.galleries.create( title: "Cats", goal: 1)
g2 = u1.galleries.create( title: "Dogs", goal: 2)
g3 = u2.galleries.create( title: "Guitars", goal: 1)
g4 = u3.galleries.create( title: "Drums", goal: 1)

p1 = g1.photos.create(votes: 0, url: 'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png')
p2 = g1.photos.create(votes: 0, url: 'https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2018/08/kitten-440379.jpg?h=c8d00152&itok=1fdekAh2')
p3 = g1.photos.create(votes: 0, url: 'https://ichef.bbci.co.uk/news/1024/cpsprodpb/151AB/production/_111434468_gettyimages-1143489763.jpg')
p4 = g1.photos.create(votes: 0, url: 'https://static.scientificamerican.com/sciam/cache/file/92E141F8-36E4-4331-BB2EE42AC8674DD3_source.jpg')
p4 = g2.photos.create(votes: 0, url: 'https://i.ytimg.com/vi/MPV2METPeJU/maxresdefault.jpg')
p4 = g2.photos.create(votes: 0, url: 'https://i.guim.co.uk/img/media/fe1e34da640c5c56ed16f76ce6f994fa9343d09d/0_174_3408_2046/master/3408.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=0d3f33fb6aa6e0154b7713a00454c83d')
p4 = g2.photos.create(votes: 0, url: 'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/322868_1100-800x825.jpg')
p4 = g2.photos.create(votes: 0, url: 'https://www.sciencemag.org/sites/default/files/styles/article_main_large/public/dogs_1280p_0.jpg?itok=cnRk0HYq')
p4 = g2.photos.create(votes: 0, url: 'https://ggsc.s3.amazonaws.com/images/uploads/The_Science-Backed_Benefits_of_Being_a_Dog_Owner.jpg')
p4 = g2.photos.create(votes: 0, url: 'https://i.natgeofe.com/n/4f5aaece-3300-41a4-b2a8-ed2708a0a27c/domestic-dog_thumb.jpg')
p4 = g3.photos.create(votes: 0, url: 'https://www.roadiemusic.com/blog/wp-content/uploads/2018/03/DAngelico-Guitars-Showroom-e1521445437261.jpg')
p4 = g3.photos.create(votes: 0, url: 'https://guitar.com/wp-content/uploads/2020/10/february-guitars@1400x1050.jpg')
p4 = g3.photos.create(votes: 0, url: 'https://www.sciencenewsforstudents.org/wp-content/uploads/2019/11/860_AT_guitar_acoustics.png')
p4 = g3.photos.create(votes: 0, url: 'https://cdn.mos.cms.futurecdn.net/TzcEticqhdMeKCF79BRyGQ-1200-80.jpg')
p4 = g4.photos.create(votes: 0, url: 'https://beatsure.com/wp-content/uploads/2019/10/How-To-Learn-To-Play-Drums-For-Beginners-e1572373309326.jpg')
p4 = g4.photos.create(votes: 0, url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRubhVrH0bUCcOq2kNasED5EHaLgbj1Vo2zgdsl2Q5OZcdC4RkzXpJhdKuM5JDdnlBffGI&usqp=CAU')
p4 = g4.photos.create(votes: 0, url: 'http://free-drum-lessons-online.com/files/images/online-virtual-drum-set-1.jpg')
p4 = g4.photos.create(votes: 0, url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZcWayJI9FYxQQ6CsuHXsuxZKv4oRdTy7_sg&usqp=CAU')

puts "Seeding complete!"