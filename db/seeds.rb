# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Contact.delete_all
FlatEquipment.delete_all
Flat.delete_all
Equipment.delete_all
User.delete_all
puts "création d'équipements"
air = Equipment.create(name: "air-conditioning")
degree = Equipment.create(name: "degree")
dish = Equipment.create(name: "dishwashers")
dryer = Equipment.create(name: "dryer")
freezer = Equipment.create(name: "freezer")
Equipment.create(name: "hair-dryer")
Equipment.create(name: "iron")
Equipment.create(name: "key")
Equipment.create(name: "laundry")
Equipment.create(name: "microwave")
Equipment.create(name: "parking")
Equipment.create(name: "pets")
refrig = Equipment.create(name: "refrigerator")
shower = Equipment.create(name: "shower")
Equipment.create(name: "soundproof")
Equipment.create(name: "swiming-pool")
Equipment.create(name: "terrace")
Equipment.create(name: "user")
wash = Equipment.create(name: "washing-machine")
Equipment.create(name: "weekly-cleaning")
Equipment.create(name: "wifi")
puts "equipements créés"


puts "-------------------------------"
puts "création de 2 users "



thomas = User.new(first_name: 'Thomas', email:'thomas@test.com', password: "thomas@test.com")
thomas.save!
puts "thomas exist"

jerry = User.new(first_name: 'Jerry', email:'jerry@test.com', password: "jerry@test.com")
jerry.save!
puts "jerry exist"




puts "création des appartements "

thomas_home1 = Flat.new(description: "Il est mis en vente une villa personnelle de 4 chambres salon sanitaires et une boutique construite sur une parcelle déjà lotie et recasée d’une superficie de 450M m².Documents disponibles :Attestation de recasement", operation_type: "A VENDRE", house_type: "Appartement", address: "Barumbu, Kinshasa, République démocratique du Congo", rooms: 4, pieces: 5, surface: 450, price: 27000000, user_id: "#{thomas.id}")
thomas_home1.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605365294/nqecz9gac7grz5uj1fbxeji7mzgx.jpg'), filename: 'pierre_home1.png', content_type: 'image/png')
thomas_home1.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605365293/e0xuigeg872qc3km5j2k3ecgvre5.jpg'), filename: 'pierre_home2.png', content_type: 'image/png')
thomas_home1.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605365291/ufw1udlp07pi3t3tjjlija3umga2.jpg'), filename: 'pierre_home3.png', content_type: 'image/png')
thomas_home1.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605365289/o8mydrufqhxn2jnb5n0y594n75ni.jpg'), filename: 'pierre_home4.png', content_type: 'image/png')
thomas_home1.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605365288/tt1pplr4gb2sxzzkmtze34poici5.jpg'), filename: 'pierre_home5.png', content_type: 'image/png')
thomas_home1.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605365288/tt1pplr4gb2sxzzkmtze34poici5.jpg'), filename: 'pierre_home5.png', content_type: 'image/png')
thomas_home1.save!

thomas_home2 = Flat.new(description: "Disponible à louer à Gombe, une belle villa de 5 chambres salon avec jardin et garage pour 2 véhicules.", operation_type: "A LOUER", house_type: "Maison/Villa", address: "Avenue de la Gombe, Haut Commandement, Kinshasa, République démocratique du Congo", rooms: 5, pieces: 6, surface: 200, price: 8000000, user_id: "#{thomas.id}")
thomas_home2.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605636784/b6q0wi7roxu2umzk16nu2yb0ya3q.jpg'), filename: 'ademola_home1.png', content_type: 'image/png')
#ademola_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605636780/u96cyfpjx9kwtm5z1oc8z3asi7ff.jpg'), filename: 'ademola_home2.png', content_type: 'image/png')
#ademola_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605636776/whdicxesn0kx0oyfh3fvrbrkd0mk.jpg'), filename: 'ademola_home3.png', content_type: 'image/png')
#ademola_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605636772/jz21y14dpx2d0fzthcs9rbvbyfni.jpg'), filename: 'ademola_home4.png', content_type: 'image/png')
#ademola_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605636766/v3cn3rwcsmg3sk8pza14zgytqghl.jpg'), filename: 'ademola_home5.png', content_type: 'image/png')
thomas_home2.save!

thomas_home3 = Flat.new(description: "Nous mettons en location une splendide villa triplex de 4 chambres , 3 salons , 2 cuisines nouvellement construite avec des matériaux exotiques et jamais habitée.
Cette villa construite avec un plan très moderne est repartie comme suit:
♦ AU REZ-DE-CHAUSSÉE
– 1 luxueux salon et salle à manger hyper aéré avec plusieurs portes d’entrée.
– Une chambre un salon avec sa salle d’eau
– Une très jolie cuisine bien top
– 1 Toilette visiteurs
– Garage pour 3 véhicules
– Un joli jardin
♦ AU 1er ÉTAGE
1 luxueux salon très bien aéré qui donne accès sur une belle terrasse ;
2 chambres avec chacune leur douche intégrée et leur dressing ;
Une baignoire dans la chambre principale ;
*AU 2ÈME ÉTAGE*
– ne chambre avec sa salle d’eau,
– un petit séjour
– Une très belle et grande terrasse par endroit couverte;
Autres informations importantes:
Toutes les pièces sont staffées au carrelage vitrifié avec des jeux de lumières top, baignoire dans la chambre principale avec le dispositif du chauffage, douches et dressing intégrés , portes faites avec des matières impeccables etc.

NB: La dite villa dispose d’un jardin très alléchant, d’une autre terrasse un peu vaste pouvant servir aux manifestations ou réunions, 2 boyeries avec une salle de bain et une toilette, un garage de 3 véhicules et une guérite.", operation_type: "A LOUER", house_type: "Maison/ Villa", address: "Lingwala, Kinshasa, République démocratique du Congo", rooms: 5, pieces: 6, surface: 200, price: 8000000, user_id: "#{thomas.id}")
thomas_home3.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605030234/noqsxq3resvbk19qmxle8oxajdyx.jpg'), filename: 'aline_home1.png', content_type: 'image/png')
#aline_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605030231/o5idb6fu1b0rp56g8zktomoakmuf.jpg'), filename: 'aline_home2.png', content_type: 'image/png')
#aline_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605030227/ly1c8ztft1vl8r3b58hlq16t9h13.jpg'), filename: 'aline_home3.png', content_type: 'image/png')
#aline_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605030225/tydbiobs8ouq00o3yg56vk79liv8.jpg'), filename: 'aline_home4.png', content_type: 'image/png')
#aline_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605030223/a9y0se62j1a5e6r0ont87076psre.jpg'), filename: 'aline_home5.png', content_type: 'image/png')
thomas_home3.save!

alex_home = Flat.new(description: "Disponible à louer à Gombe, une belle villa de 5 chambres salon avec jardin et garage pour 2 véhicules.", operation_type: "A LOUER", house_type: "Maison/ Villa", address: "Avenue de la Gombe, Haut Commandement, Kinshasa, République démocratique du Congo", rooms: 5, pieces: 6, surface: 200, price: 8000000, user_id: "#{thomas.id}")
alex_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186635/cojfc126wmkk8cjh3ie16zc0y39b.jpg'), filename: 'alex_home1.png', content_type: 'image/png')
#alex_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186630/uc7p2junl0jxynl54sxuiss3ml44.jpg'), filename: 'alex_home2.png', content_type: 'image/png')
#alex_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186627/vmjg9qspwvuwgeq1rl1ntb99y7yo.jpg'), filename: 'alex_home3.png', content_type: 'image/png')
#alex_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186622/1qyejob355imu24wt8iihaq3sxv8.jpg'), filename: 'alex_home4.png', content_type: 'image/png')
#alex_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186617/fh7vtmipg3a4b0mjp8jwbhribxd0.jpg'), filename: 'alex_home5.png', content_type: 'image/png')
alex_home.save!

celeste_home = Flat.new(description: "Disponible à louer à Gombe, une belle villa de 5 chambres salon avec jardin et garage pour 2 véhicules.", operation_type: "A LOUER", house_type: "Maison/ Villa", address: "Avenue de la Gombe, Haut Commandement, Kinshasa, République démocratique du Congo", rooms: 5, pieces: 6, surface: 200, price: 8000000, user_id: "#{thomas.id}")
celeste_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186617/fh7vtmipg3a4b0mjp8jwbhribxd0.jpg'), filename: 'alex_home1.png', content_type: 'image/png')
#celeste_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186630/uc7p2junl0jxynl54sxuiss3ml44.jpg'), filename: 'alex_home2.png', content_type: 'image/png')
#celeste_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186627/vmjg9qspwvuwgeq1rl1ntb99y7yo.jpg'), filename: 'alex_home3.png', content_type: 'image/png')
#celeste_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186622/1qyejob355imu24wt8iihaq3sxv8.jpg'), filename: 'alex_home4.png', content_type: 'image/png')
#celeste_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186617/fh7vtmipg3a4b0mjp8jwbhribxd0.jpg'), filename: 'alex_home5.png', content_type: 'image/png')
celeste_home.save!

camille_home = Flat.new(description: "Disponible à louer à Gombe, une belle villa de 5 chambres salon avec jardin et garage pour 2 véhicules.", operation_type: "A LOUER", house_type: "Maison/ Villa", address: "Avenue de la Gombe, Haut Commandement, Kinshasa, République démocratique du Congo", rooms: 5, pieces: 6, surface: 200, price: 8000000, user_id: "#{thomas.id}")
camille_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186635/cojfc126wmkk8cjh3ie16zc0y39b.jpg'), filename: 'alex_home1.png', content_type: 'image/png')
camille_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186630/uc7p2junl0jxynl54sxuiss3ml44.jpg'), filename: 'alex_home2.png', content_type: 'image/png')
camille_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186627/vmjg9qspwvuwgeq1rl1ntb99y7yo.jpg'), filename: 'alex_home3.png', content_type: 'image/png')
camille_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186622/1qyejob355imu24wt8iihaq3sxv8.jpg'), filename: 'alex_home4.png', content_type: 'image/png')
camille_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186617/fh7vtmipg3a4b0mjp8jwbhribxd0.jpg'), filename: 'alex_home5.png', content_type: 'image/png')
camille_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186617/fh7vtmipg3a4b0mjp8jwbhribxd0.jpg'), filename: 'alex_home5.png', content_type: 'image/png')
camille_home.save!

stefan_home = Flat.new(description: "Disponible à louer à Gombe, une belle villa de 5 chambres salon avec jardin et garage pour 2 véhicules.", operation_type: "A LOUER", house_type: "Maison/ Villa", address: "Avenue de la Gombe, Haut Commandement, Kinshasa, République démocratique du Congo", rooms: 5, pieces: 6, surface: 200, price: 8000000, user_id: "#{thomas.id}")
stefan_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605030225/tydbiobs8ouq00o3yg56vk79liv8.jpg'), filename: 'alex_home1.png', content_type: 'image/png')
#stefan_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186630/uc7p2junl0jxynl54sxuiss3ml44.jpg'), filename: 'alex_home2.png', content_type: 'image/png')
#stefan_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186627/vmjg9qspwvuwgeq1rl1ntb99y7yo.jpg'), filename: 'alex_home3.png', content_type: 'image/png')
#stefan_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186622/1qyejob355imu24wt8iihaq3sxv8.jpg'), filename: 'alex_home4.png', content_type: 'image/png')
#stefan_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186617/fh7vtmipg3a4b0mjp8jwbhribxd0.jpg'), filename: 'alex_home5.png', content_type: 'image/png')
stefan_home.save!

clement_home = Flat.new(description: "Disponible à louer à Gombe, une belle villa de 5 chambres salon avec jardin et garage pour 2 véhicules.", operation_type: "A LOUER", house_type: "Maison/ Villa", address: "Avenue de la Gombe, Haut Commandement, Kinshasa, République démocratique du Congo", rooms: 5, pieces: 6, surface: 200, price: 8000000, user_id: "#{thomas.id}")
clement_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605030223/a9y0se62j1a5e6r0ont87076psre.jpg'), filename: 'alex_home1.png', content_type: 'image/png')
#clement_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186630/uc7p2junl0jxynl54sxuiss3ml44.jpg'), filename: 'alex_home2.png', content_type: 'image/png')
#clement_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186627/vmjg9qspwvuwgeq1rl1ntb99y7yo.jpg'), filename: 'alex_home3.png', content_type: 'image/png')
#clement_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186622/1qyejob355imu24wt8iihaq3sxv8.jpg'), filename: 'alex_home4.png', content_type: 'image/png')
#clement_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186617/fh7vtmipg3a4b0mjp8jwbhribxd0.jpg'), filename: 'alex_home5.png', content_type: 'image/png')
clement_home.save!

fatoutmata_home = Flat.new(description: "Disponible à louer à Gombe, une belle villa de 5 chambres salon avec jardin et garage pour 2 véhicules.", operation_type: "A LOUER", house_type: "Maison/ Villa", address: "Avenue de la Gombe, Haut Commandement, Kinshasa, République démocratique du Congo", rooms: 5, pieces: 6, surface: 200, price: 8000000, user_id: "#{thomas.id}")
fatoutmata_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605636766/v3cn3rwcsmg3sk8pza14zgytqghl.jpg'), filename: 'alex_home1.png', content_type: 'image/png')
#fatoutmata_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186630/uc7p2junl0jxynl54sxuiss3ml44.jpg'), filename: 'alex_home2.png', content_type: 'image/png')
#fatoutmata_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186627/vmjg9qspwvuwgeq1rl1ntb99y7yo.jpg'), filename: 'alex_home3.png', content_type: 'image/png')
#fatoutmata_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186622/1qyejob355imu24wt8iihaq3sxv8.jpg'), filename: 'alex_home4.png', content_type: 'image/png')
#fatoutmata_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1604186617/fh7vtmipg3a4b0mjp8jwbhribxd0.jpg'), filename: 'alex_home5.png', content_type: 'image/png')
fatoutmata_home.save!

caroline_home = Flat.new(description: "Disponible à louer à Gombe, une belle villa de 5 chambres salon avec jardin et garage pour 2 véhicules.", operation_type: "A LOUER", house_type: "Maison/ Villa", address: "Avenue de la Gombe, Haut Commandement, Kinshasa, République démocratique du Congo", rooms: 5, pieces: 6, surface: 200, price: 8000000, user_id: "#{thomas.id}")
caroline_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605636772/jz21y14dpx2d0fzthcs9rbvbyfni.jpg'), filename: 'caroline_home1.png', content_type: 'image/png')
#caroline_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1606558131/emmjrfb35w46rkai7f8wj69aulsh.jpg'), filename: 'caroline_home2.png', content_type: 'image/png')
#caroline_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1606558130/xl1wzqltdcnqpmnoeublgdgdfld2.jpg'), filename: 'caroline_home3.png', content_type: 'image/png')
#caroline_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1606419677/osy47b4fxf0riyzmyhg9trbfgqjl.jpg'), filename: 'caroline_home4.png', content_type: 'image/png')
#caroline_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1606419678/rj559rbur5i4g2wt9xmfz2kdqzfi.jpg'), filename: 'caroline_home5.png', content_type: 'image/png')
caroline_home.save!

afchine_home = Flat.new(description: "Disponible à louer à Gombe, une belle villa de 5 chambres salon avec jardin et garage pour 2 véhicules.", operation_type: "A LOUER", house_type: "Maison/ Villa", address: "Avenue de la Gombe, Haut Commandement, Kinshasa, République démocratique du Congo", rooms: 5, pieces: 6, surface: 200, price: 8000000, user_id: "#{thomas.id}")
afchine_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605636776/whdicxesn0kx0oyfh3fvrbrkd0mk.jpg'), filename: 'afchine_home1.png', content_type: 'image/png')
#afchine_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1606558303/zaquhsk2xga6bvxnhpl53j631x5r.jpg'), filename: 'afchine_home2.png', content_type: 'image/png')
#afchine_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1606558302/k3rvf97szy3dpam9jfw36m8l3mm7.jpg'), filename: 'afchine_home3.png', content_type: 'image/png')
#afchine_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1606419368/gei2vka03d6symugpeaearztl6g6.jpg'), filename: 'afchine_home4.png', content_type: 'image/png')
#afchine_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1606419369/60kv7mx7162egw54t35sab7d68x3.jpg'), filename: 'afchine_home5.png', content_type: 'image/png')
afchine_home.save!


basile_home = Flat.new(description: "Disponible à louer à Gombe, une belle villa de 5 chambres salon avec jardin et garage pour 2 véhicules.", operation_type: "A LOUER", house_type: "Maison/ Villa", address: "Avenue de la Gombe, Haut Commandement, Kinshasa, République démocratique du Congo", rooms: 5, pieces: 6, surface: 200, price: 8000000, user_id: "#{thomas.id}")
basile_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1605636780/u96cyfpjx9kwtm5z1oc8z3asi7ff.jpg'), filename: 'basile_home1.png', content_type: 'image/png')
#basile_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1606419058/8x0qgf69y1pvfzv66bvwlm2tozpt.jpg'), filename: 'basile_home2.png', content_type: 'image/png')
#basile_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1606419059/b4tdj18cq757201drg6zfiseg65v.jpg'), filename: 'basile_home3.png', content_type: 'image/png')
#basile_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1606419060/rc4toyt298m6dnkt2gyzkd6zey2f.jpg'), filename: 'basile_home4.png', content_type: 'image/png')
#basile_home.photos.attach(io: URI.open('https://res.cloudinary.com/dy1zzrtoi/image/upload/v1606419061/5vwvl5e4gj5887reocchdrx1qy0f.jpg'), filename: 'basile_home5.png', content_type: 'image/png')
basile_home.save!
