# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = [{:usuario => 'organizador', :nombre => 'Gregorio', :apellido => 'Martinez', :email => 'unemail@go.com',:password => "clave12345", :password_confirmation => "clave12345",  :facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '3'},
    	  {:usuario => 'TheTerminator', :nombre => 'Ramon', :apellido => 'Ortega', :email => 'beto@ortega.com', :password => "clave12345", :password_confirmation => "clave12345",:facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '3'},
    	  {:usuario => 'donramon1', :nombre => 'Ramon', :apellido => 'Don', :email => 'donramon@chavo.mx', :password => "clave12345", :password_confirmation => "clave12345",:facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '1'},
    	  {:usuario => 'TheHelp12', :nombre => 'Gregorio', :apellido => 'Torres', :email => 'dostorres@hobbit.com',:password => "clave12345", :password_confirmation => "clave12345",:facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '3'},
     	  {:usuario => 'Chocolate', :nombre => 'Gregorio', :apellido => 'Kaute-Mock', :email => 'examples@itaca.mx',:password => "clave12345", :password_confirmation => "clave12345",:facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '3'},
     	  {:usuario => 'Amelie123', :nombre => 'Ramon', :apellido => 'Izidor', :email => 'unemail1@go.com',:password => "clave12345", :password_confirmation => "clave12345",:facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '3'},
     	  {:usuario => 'SpaceOdyssey', :nombre => 'Gregorio', :apellido => 'Delmonte', :email => 'unemail2@go.com',:password => "clave12345", :password_confirmation => "clave12345",:facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '3'},
     	  {:usuario => 'TheIncredibles', :nombre => 'Gregorio', :apellido => 'Perez', :email => 'unemail3@go.com',:password => "clave12345", :password_confirmation => "clave12345",:facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '3'},
     	  {:usuario => 'RaidersLostArk', :nombre => 'Gregorio', :apellido => 'Acuña', :email => 'unemail4@go.com',:password => "clave12345", :password_confirmation => "clave12345",:facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '3'},
     	  {:usuario => 'ChickenRun', :nombre => 'Gregorio', :apellido => 'Escaleno', :email => 'unemail5@go.com',:password => "clave12345", :password_confirmation => "clave12345",:facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '3'},
        {:usuario => 'Jurado001', :nombre => 'Gregorio', :apellido => 'Acuña', :email => 'jurado1@go.com',:password => "clave12345", :password_confirmation => "clave12345",:facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '2'},
        {:usuario => 'Jurado002', :nombre => 'Gregory', :apellido => 'Acuña', :email => 'jurado2@go.com',:password => "clave12345", :password_confirmation => "clave12345",:facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '2'},
        {:usuario => 'Jurado003', :nombre => 'Micaëla', :apellido => 'Acuña', :email => 'jurado3@go.com',:password => "clave12345", :password_confirmation => "clave12345",:facebook => 'https://facebook.com/cosme.fulanito', :twitter => '@fulanito', :tipo_usuario_id => '2'}
  	 ]

users.each do |user|
   User.create!(user)
end

organizers = [{:name => 'ACME', :address => 'Desierto de Arizona', :web => 'http://www.acme.org', :email => 'contact@acme.org', :logo => 'jpg', :user_id => 1 },
  {:name => 'FAMPAS (Fake Academy of Motion Picture Arts and Sciences)', :address => '8949 Wilshire Boulevard Beverly Hills, California 90211', :web => 'http://www.fakeoscars.org/', :email => 'fakecontact@oscars.org', :logo => 'jpg',:user_id => 2},
  {:name => 'test13245', :address => 'Dirección de la ORG', :web => 'http://test.com', :email => 'contact@oscars.org', :user_id => 1},
  {:name => 'Comunidad TIC', :address => 'Corrientes, Argentina', :web => 'http://www.comunidadtic.com.ar', :email => 'contacto@comunidadtic.com.ar', :user_id => 4},
  {:name => 'Nombre A', :address => 'Una dirección cualquiera', :web => 'UnSitioWeb', :email => 'examplesA@mail.ws',:user_id => 5},
  {:name => 'Nombre B', :address => 'Una dirección cualquiera', :web => 'UnSitioWeb', :email => 'examplesB@mail.ws',:user_id => 6},
  {:name => 'Nombre C', :address => 'Una dirección cualquiera', :web => 'UnSitioWeb', :email => 'examplesC@mail.ws',:user_id => 7},
  {:name => 'Nombre D', :address => 'Una dirección cualquiera', :web => 'UnSitioWeb', :email => 'examplesD@mail.ws',:user_id => 8},
  {:name => 'Nombre E', :address => 'Una dirección cualquiera', :web => 'UnSitioWeb', :email => 'examplesE@mail.ws',:user_id => 9},
  {:name => 'Nombre F', :address => 'Una dirección cualquiera', :web => 'UnSitioWeb', :email => 'examplesF@mail.ws',:user_id => 10}
  	 ]

organizers.each do |organizer|
  Organizer.create!(organizer)
end

selection_processes = [{:name_process => 'ACME Prize', :place => 'Desierto de Arizona', :duration => '180', start_date: "2014-03-13", end_date: "2014-12-13", state: "nuevo", :process_type_id => 1, :organizer_id => 1 },
  {:name_process => 'Fake Oscar 2014', :place => '8949 Wilshire Boulevard Beverly Hills, California 90211', :duration => '180', start_date: "2014-03-13", end_date: "2014-12-13", state: "nuevo", :process_type_id => 1, :organizer_id => 2},
  {:name_process => 'Grammy 2014', :place => 'Av. Siempre Viva 742', :duration => '180', start_date: "2014-03-13", end_date: "2014-12-13", state: "nuevo", :process_type_id => 1, :organizer_id => 1},
  {:name_process => 'Premios TIC', :place => 'Corrientes, Argentina', :duration => '180', start_date: "2014-03-13", end_date: "2014-12-13", state: "nuevo", :process_type_id => 1, :organizer_id => 4},
  {:name_process => 'Miss Multiverso 2014', :place => 'Los Angeles, CA, USA', :duration => '364', start_date: "2014-03-13", end_date: "2014-12-13", state: "nuevo", :process_type_id => 2, :organizer_id => 2},
  {:name_process => 'Nombre B', :place => 'Una dirección cualquiera', :duration => '180', start_date: "2014-03-13", end_date: "2014-12-13", state: "nuevo", :process_type_id => 1, :organizer_id => 1},
  {:name_process => 'Nombre F', :place => 'Una dirección cualquiera', :duration => '180', start_date: "2014-03-13", end_date: "2014-12-13", state: "nuevo", :process_type_id => 1, :organizer_id => 1}
  	 ]

selection_processes.each do |process|
  SelectionProcess.create!(process)
end

categories = [
    {:name => 'Candidatos a Mejor Wile E. Coyote', :description => 'Candidatos a remplazar a Wile E. Coyote, a.k.a. el coyote, en el Desierto de Arizona', :bench => '10', selection_process_id: '1'},
    {:name => 'Mejor Cohete', :description => 'TOP 3. Participan los cohetes utilizados por el coyote en sus persecuciones', :bench => '3', selection_process_id: '1'},
    {:name => 'Mejor Trampa', :description => 'TOP 5. Participan las trampas o artilugios utilizadas por el coyote para atrapar al correcaminos', :bench => '10', selection_process_id: '1'},
    {:name => 'Mejor Caída', :description => 'TOP5. Caidas del coyote en sus persecuciones por el desierto de Arizona', :bench => '5', selection_process_id: '1'},
    {:name => 'Mejor idea', :description => 'TOP5. Mejores ideas para aplicar en el desierto de Arizona', :bench => '5', selection_process_id: '1'},
    {:name => 'Mejor actor', :description => 'desde 1928', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor actor de reparto', :description => 'desde 1936', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor actriz', :description => 'desde 1928', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor actriz de reparto', :description => 'desde 1936', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor banda sonora', :description => 'desde 1934', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor canción original', :description => 'desde 1934', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor cortometraje animado', :description => 'desde 1931', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor cortometraje de ficción', :description => 'desde 1931', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor director', :description => 'desde 1928', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor diseño de producción', :description => 'desde 1928', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor diseño de vestuario', :description => 'desde 1948', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor documental corto', :description => 'desde 1941', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor documental largo', :description => 'desde 1943', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor edición de sonido', :description => 'desde 1963', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejores efectos visuales', :description => 'desde 1939', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor fotografía', :description => 'desde 1928', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor guion adaptado', :description => 'desde 1928', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor guion original', :description => 'desde 1940', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor maquillaje y peinado', :description => 'desde 1981', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor montaje', :description => 'desde 1934', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor película', :description => 'desde 1928', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor película de animación', :description => 'desde 2001', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor película de habla no inglesa', :description => 'desde 1956', :bench => '5', :selection_process_id => '2'},
    {:name => 'Mejor sonido', :description => 'desde 1930', :bench => '5', :selection_process_id => '2'}
]

categories.each do |category|
  Category.create!(category)
end

candidates = [
    {:name => "Carnivorous vulgaris 49'" , :bios => "Del capitulo Fast and Furry-ous, 1949·9·17, utilizo ACME Super Outfit", :category_id => "1", url_image: "jpg"},
    {:name => "Carnivorous Vulgaris 52'" , :bios => "Del capitulo Beep, Beep, 1952·5·24, utilizo Aspirin, Matches, Rocket-Powered Roller Skates.", :category_id => "1", url_image: "jpg"},
    {:name => "Carnivorous Vulgaris" , :bios => "Del capitulo Going! Going! Gosh!, 1952·8·23, utilizo an anvil, a weather balloon, a street cleaner's bin, and a fan.", :category_id => "1", url_image: "jpg"},
    {:name => "Eatibus anythingus" , :bios => "Del capitulo Stop! Look! And Hasten!, 14 08 1954, utilizo Bird Seed, Triple Strength Fortified Leg Muscle Vitamins. Y leyo el libro 'How to Build a Burmese Tiger Trap'.", :category_id => "1", url_image: "jpg"},
    {:name => "Famishus-Famishus" , :bios => "Del capitulo Ready, Set, Zoom!, 30 04 1955, utilizo Glue.", :category_id => "1", url_image: "jpg"},
    {:name => "Eatibus almost anythingus" , :bios => "Del capitulo Guided Muscle, 10 12 1955, utilizo ACME Grease.", :category_id => "1", url_image: "jpg"},
    {:name => "Eatius birdius" , :bios => "Del capitulo Gee Whiz-z-z-z-z-z-z, 05 05 1956, utilizo ACME Triple Strength Battleship Steel Armor Plate, Rubber Band, Jet Bike.", :category_id => "1", url_image: "jpg"},
    {:name => "Famishius vulgaris ingeniusi" , :bios => "Del capitulo Whoa, Be-Gone!, 12 04 1958, utilizo Tornado Seeds.", :category_id => "1", url_image: "jpg"},
    {:name => "Hardheadipus oedipus" , :bios => "Del capitulo Wild About Hurry, 1959·10·10, utilizo Giant Elastic Rubber Band, 5 Miles of Railroad Track, Rocket Sled, Bird Seed, Iron Pellets, Indestructo Steel Ball.", :category_id => "1", url_image: "jpg"},
    {:name => "Rocket sled" , :bios => "Cohete con volante", :category_id => "3", url_image: "jpg"},
    {:name => "Rocket skates" , :bios => "patines con cohetes", :category_id => "3", url_image: "jpg"},
    {:name => "Spherical Bomb" , :bios => "bomba esferica", :category_id => "3", url_image: "jpg"},
    {:name => "Spring-powered shoes" , :bios => "sapatillas con resortes", :category_id => "3", url_image: "jpg"},
    {:name => "Burmese tiger trap" , :bios => "trampa para tigres", :category_id => "3", url_image: "jpg"},
    {:name => "Arturo García Buhr" , :bios => "Pelicula Los chicos crecen 1943", :category_id => "6", url_image: "jpg"},
    {:name => "Francisco Petrone" , :bios => "Pelicula Todo un hombre 1944", :category_id => "6", url_image: "jpg"},
    {:name => "Enrique Muiño" , :bios => "Pelicula Su mejor alumno 1945", :category_id => "6", url_image: "jpg"},
    {:name => "Pedro López Lagar" , :bios => "Pelicula Celos 1967", :category_id => "6", url_image: "jpg"},
    {:name => "Piedra gigante" , :bios => "Atar una piedra gigante con una cuerda, elevarla 3 metros y poner comida debajo.", :category_id => "5", url_image: "jpg"},
    {:name => "Comida con hierro" , :bios => "Colocar comida con pelotitas de hierro, luego usar un íman grande para atrapar a la presa.", :category_id => "5", url_image: "png"},
    {:name => "Tunel falso" , :bios => "Pintar un tunel falso sobre una pared, y luego redirigir las lineas del trafico hacia él.", :category_id => "5", url_image: "png"},
    {:name => "ACME Giant Firecrackers" , :bios => "Cohete marca ACME tipo cañita voladora", :category_id => "2", url_image: "jpg"},
    {:name => "ACME Rocket Sled" , :bios => "(ACME Little Giant Do-it-Yourself Rocket-Sled Kit)", :category_id => "2", url_image: "jpg"},
    {:name => "ACME Missile-Bombs" , :bios => "Cohete marca ACME con volante y alerones", :category_id => "2", url_image: "png"},
    {:name => "Caída 0" , :bios => "Coyote muestra cartelito mientras cae.", :category_id => "4", url_image: "jpg"},
    {:name => "Caída 1" , :bios => "Anti gravedad. Coyote agarrado a un pedaso de piedra que se desprendio del precipicio.", :category_id => "4", url_image: "jpg"},
    {:name => "Caída 2" , :bios => "Alas quemadas por rayo", :category_id => "4", url_image: "jpg"}
]

candidates.each do |candidate|
  Candidate.create!(candidate)
end

voters = [
  {:user_id => '1', :selection_process_id => '1', :estado => '1'},
  {:user_id => '2', :selection_process_id => '1', :estado => '1'},
  {:user_id => '3', :selection_process_id => '1', :estado => '1'},
  {:user_id => '4', :selection_process_id => '1', :estado => '1'},
  {:user_id => '5', :selection_process_id => '1', :estado => '1'},
  {:user_id => '6', :selection_process_id => '1', :estado => '1'},
  {:user_id => '7', :selection_process_id => '1', :estado => '1'},
  {:user_id => '8', :selection_process_id => '1', :estado => '1'},
  {:user_id => '9', :selection_process_id => '1', :estado => '1'},
  {:user_id => '10', :selection_process_id => '1', :estado => '1'},
  {:user_id => '11', :selection_process_id => '1', :estado => '1'},
  {:user_id => '12', :selection_process_id => '1', :estado => '2'},
  {:user_id => '13', :selection_process_id => '1', :estado => '3'}
 ]

voters.each do |voter|
  VoterList.create!(voter)
end

