Projets : Petits sites de BDD relationnelles
  
1. Introduction
Pour ce projet, nous allons te demander de créer les models de plusieurs applications. Ce seront tes premières tables avancées, mais à ton niveau plus rien ne t'arrête.

Pour tous ces sites, nous allons te demander de créer uniquement les modèles, pas de views / controller. ✌️
Par contre n'oublie pas qu'une fois ton travail validé en console, tu dois faire un joli seeds.rb pour que les autres moussaillons puissent te corriger facilement.

Comme chaque projet chez THP, il faut le faire en pair-programming !

2. Le projet
2.1. FreeDoc - Réserve ton docteur
2.1.1. Le pitch
Allez, on va implémenter pour de vrai ce concurrent de Doctolib dont on te parle à longueur de ressource ! À toi d'être chirurgical 👩‍⚕️

2.1.2. Les models
Pour ce premier exercice, nous allons t'aider et te donner les models à créer :

un model Doctor, qui a comme attributs :
un first_name, qui est un string
un last_name, qui est un string
un specialty, qui est un string
un zip_code, qui est un string
un model Patient, qui a comme attributs :
un first_name, qui est un string
un last_name, qui est un string
un model Appointment, qui a comme attributs :
un date, qui est un datetime
Une fois les attributs fixés, on s'attaque aux relations :

Un appointment ne peut avoir qu'un seul doctor, mais un doctor peut avoir plusieurs appointment.
Un appointment ne peut avoir qu'un seul patient, mais un patient peut avoir plusieurs appointment.
Un doctor peut avoir plusieurs patient, au travers des appointments, et vice versa.
Je t'invite à créer les models et les migrations puis à les passer.

2.1.3. Tester
Pour tester, tu peux aller dans la console, créer des doctor, patient, et appointment à la volée, puis les lier.

⚠️ ALERTE ERREUR COMMUNE
Comme les doctor et les patient sont liés en N-N, rappelle-toi qu'un patients_list = doctor_instance.patients va te retourner un array d'objets de class Patient.
Si tu fais patients_list.last_name dessus, ça va te renverra une erreur car un array n'a pas de last_name.
Par contre tu peux faire dessus un patients_list.first.last_name ou patients_list[0].last_name 😉.

Une fois que c'est bon, n'oublie pas le seeds.rb qui va bien.

2.1.4. Petit coup de boost
Ta startup de docteurs marche à merveille, tellement que tu aimerais ajouter plusieurs tables :

city. Chaque docteur, patient, et rendez-vous est lié à une city. Une city peut avoir plusieurs docteurs, patients, et rendez-vous.
tu voudrais virer la ligne specialty de ta table doctor et la remplacer par un model à part entière : tu vas donc créer un model specialty. Un docteur aurait plusieurs specialty (DEAL_WITH_IT), et une specialty pourrait concerner plusieurs doctor.
Comme d'hab tu vas tester et tu compléteras le seeds.rb pour prendre en compte ces changements.

Et voilà pour FreeDoc ! Doctolib est en PLS.

2.2. Le Airbnb des promenades de chiens
2.2.1. Le pitch
En cours de "Bizness Growth Money Maker", on t'avait demandé de créer une entreprise à fort potentiel. À l'époque tu t'étais dit que ce serait une chouette idée de faire une plateforme où des personnes pourraient promener les chiens des autres, en échange de cash-money.

C'est dingue comme idée : ça va mettre tous les VC aux abois. Allez, on le fait !

2.2.2. Les models
À priori, les models sont simples : il y a un model dogsitter et un model dog (on te laisse choisir au moins un attribut chacun). Un dogsitter peut promener plusieurs dog lors d'une stroll (promenade, en anglais) ; et un dog peut avoir plusieurs dogsitter via les stroll.

Maintenant tu veux préciser la ville des promeneurs et des chiens pour faire un super algorithme de matching. Tu devras donc créer un model City avec comme attribut city_name. Chaque ville contient plusieurs promeneurs et plusieurs chiens mais un chien et un promeneur ne peuvent appartenir qu'a une ville.

Cela ressemble beaucoup à notre schéma de docteurs tout ceci ! C'est fait exprès, rien de tel pour s'entraîner que de refaire les exercices. Tu vas dérouler tes prochains model grâce à ça.

Comme la dernière fois : fait un seeds.rb et teste le tout en console.

2.3. The Gossip Project
2.3.1 Le pitch
Allez, on va poser les bases de notre fameux Gossip Project pour le transcrire en Rails. Et comme je te l'ai expliqué, la première étape est la modélisation de sa BDD !
Le parcours utilisateur est le suivant : sur ce super réseau social, un utilisateur va s'inscrire, renseigner son prénom et nom, son mail et son age, puis il précisera sa ville avec une recherche par code postal.
Il aura ensuite toutes les fonctionnalités qui feront de cette appli une future licorne de la Bitchin'Tech :

Les utilisateurs peuvent créer des potins : "askip john est célib hihi"
Les utilisateurs, en créant des potins, peuvent mettre un ou plusieurs tags sur les potins : #romance
Les utilisateurs peuvent commenter des potins : "ahiii j'savé pa lol ptdr 💁‍♂️"
Et puisque ton appli doit respecter les standards de l'industrie, on va faire en sorte qu'il soit possible aussi de commenter des commentaires.
Les utilisateurs peuvent liker des potins.
Les utilisateurs peuvent contacter leur commères favoris en MP pour obtenir des exclus mondiales.
L'utilisateur pourra donc rechercher les potins par ville, par utilisateurs, par date (plus récent ou plus ancien), par nombre de likes, par tags, pour trouver les potins les plus croustillants.

Ça fait beaucoup ?? Oui clairement, y a de la fonctionnalité de déglingos là. Pas de panique. On va te guider ! Suis-nous.

2.3.2. Dessine-moi une BDD
Allez, feuille / tableau / ERD en main et hop! => Imagine les models qu'il faut pour cette app, les relations possibles, puis évidemment les attributs de chaque model. Toute l'architecture de la BDD doit tenir sur un dessin que vous allez faire en équipe. C'est un excellent entraînement au projet final 😇

Une fois que c'est fait, on va te guider et tu vas pouvoir comparer ton schéma à notre pas à pas.

2.3.3. Les models
a) LES BASES
Commence par créer une application Rails, puis mets les bonnes versions de Ruby et Rails dans le Gemfile.

b) LES USERS
Crée une classe User, qui aura comme attributs :

Un first_name, qui est un string
Un last_name, qui est un string
Un description, qui est un text
Un email, qui est un string
Un age, qui est un integer
Tu vas faire 10 utilisateurs en base avec Faker.

c) LES VILLES
Crée une classe City, qui aura comme attributs :

Un name, qui est un string
Un zip_code, qui est un string
Un utilisateur appartient à une seule ville mais une ville peut contenir plusieurs utilisateurs.
Tu vas faire 10 villes en base avec Faker et les lier avec les utilisateurs du seed.

d) LES GOSSIPS
Crée une classe Gossip, qui aura comme attributs :

Un title, qui est un string
Un content, qui est un text
Un utilisateur peut écrire plusieurs gossips mais un gossip ne peut être écrit que par un seul utilisateur.
Tu vas faire 20 gossips en base avec Faker et les lier avec leur auteur.

e) LES TAGS
Crée une classe Tag, qui aura comme attributs :

Un title, qui est un string
Un gossip peut avoir plusieurs tags et un tag peut être présent sur plusieurs gossip (genre #bromance).
Tu vas faire 10 tags en base avec Faker. Chaque gossip aura (au minimum) un tag.

f) LES MESSAGES PRIVÉS
Crée une classe PrivateMessage, qui aura comme attributs :

Un content, qui est un text
Un PM aura un expéditeur et un (ou plusieurs) destinataires.
Tu vas faire quelques PM en base avec Faker et leur donner un expéditeur et un (ou plusieurs) destinataires.

Bravo si t'es arrivé jusque-là !
=== Les exercices ci-dessous sont optionnels et ne seront pas évalué ===

g) LES COMMENTAIRES
Crée une classe Comment, qui aura comme attributs :

Un content, qui est un text
Un gossip peut avoir plusieurs commentaires mais un commentaire ne peut correspondre qu'a un gossip précis.
Les utilisateurs peuvent écrire plusieurs commentaires mais un commentaire n'a qu'un seul auteur.
Tu vas faire 20 commentaires en base avec Faker et les lier avec leur auteur et le gossip associé.

h) LES LIKES
Crée une classe like, qui n'aura pas d'attributs.
Un utilisateur peut mettre des likes sur des gossips ou des commentaires.
Tu vas faire 20 likes en base avec Faker en les mettant à des commentaires ou des gossips au hasard.

i) LES COMMENTAIRES (BIS)
Pour les chauds de la BDD, vous pouvez faire du commentaire de commentaires. Indice polymorphism. Bien sûr, ton seed fera des commentaires de commentaires 🤓

3. Rendu attendu
3 applications Rails, chacune dans un lien GitHub. En gros 3 répo GitHub différents.
Les standards habituels sont à respecter (Gemfile, README) mais en plus on veut des jolis seeds.