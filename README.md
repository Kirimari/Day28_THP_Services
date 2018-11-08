# Scrapper à l'aide des Fichiers Services

<h3>L'exercice consistait à :</h3>

-1) créer une app via ```Rails (5.2.1)``` et ```Ruby (2.5.1)``` </br>
-2) Créer deux applications : 
      - l'une qui permet de scrapper des valeurs de cryptommonaies
    et qui nous affiche celle que l'on aura selectinner </br>
      - Une seconde qui permet de scrapper la movie database à l'aide de la gem tmdb et sur laquelle on récupere le nom du film
      la date de sortie, le réalisateur et la courverture du film </br>
 </br>
-3) mettre l'appli en prod via Heroku</br>
Attention: Pour la premiere application : Il y a un soucis de mise à jour de la valeur. Celle-ci est visiblement toujours la
même alors qu'on scrappe plusieurs fois le site.
           Pour la seconde application: Le réalisateur n'est pas scrapper de la movie database. Seul le nom du film, la date 
           de sortie et la photo sont présents. Cette application ne fonctionne pas sur Heroku. 

<h3>Pour utiliser l'app:</h3>

-1) ```git clone https://github.com/Kirimari/Day28_THP_Services```</br>
-2) ```cd``` dans le dossier créé, vous devriez avoir deux sous dossier, un pour chaque app</br>
-3) ```cd``` dans le dossier de l'app que vous voulez tester</br>
-4) ```bundle install```</br>
-5) ```rails db:create```.</br>
-6) ```rails db:migrate```.</br>
  Pour la premiere application : </br>
-7) ```heroku run rails db:migrate```.</br>
-8) ```heroku open```.</br>
  Pour la seconde application : </br>
-9) ```rails s```.</br>
-10)   aller sur localhost:3000 sur votre navigateur.</br>
  

<h3> Pour voir l'app numero 1 en production :</h3>

<i> https://scrap-monney.herokuapp.com/ </i>
