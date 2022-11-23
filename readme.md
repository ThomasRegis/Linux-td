#Installation de Mysql

On commence par installer le package Mysql grâce à la commande sudo apt install.

$ sudo apt install mysql-server //
$ sudo mysql

En rentrant dans Mysql, On ajoute la méthode d'authentification par mot de passe pour éviter l'apparition d'une erreur d'authentification.

mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password'; //
mysql> exit

On peut ensuite quitter Mysql pour lancer son installation sécurisée

$ sudo mysql_secure_installation
$ sudo mysql

On créer ensuite un utilisateur




mysql> CREATE USER 'thomas'@'localhost' IDENTIFIED BY 'password';

...et on lui donne tous les privilèges sur les bases de données

mysql> GRANT ALL PRIVILEGES ON *.* TO 'thomas'@'localhost' WITH GRANT OPTION;

L'installation sécurisée est ainsi terminée

#Importation de la base de donnée



On peut créer au préalable un fichier dans lequel on mettra la base de donnée importée

$mkdir fichier_basededonnée
$cd home/thomas/fichier_basededonnée


On utilise la commande wget pour importer la base de donnée


$ wget https://www.mysqltutorial.org/wp-content/uploads/2018/03/mysqlsampledatabase.zip //




mysql> GRANT SHOW DATABASES, SELECT, LOCK TABLES, RELOAD ON *.* to 'backup'@'localhost';



# Configuration du Timer

On créer le fichier database.service

$mkdir database.service

On réalise ensuite les commandes trouvée sur internet pour activer le service

sudo systemctl daemon-reload

sudo systemctl enable database.service

sudo systemctl start database.service








# Configuration du service

De la même manière on exécute les commandes pour activer le service


