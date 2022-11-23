// Cette partie a été réalisée avec une page internet
motdepasse=""  // Je cache le mot de passe
utilisateur="thomas"
BasedeD="classicmodels"
parcourir="/home/thomas/basededonnée/mysqlsampledatabase"
Date="$(date +%Y-%m-%d-%H-%M-%S)"
F="${parcourir}${Date}.sql"
mysqldump -u $utilisateur -p$motdepasse $BasedeD >$F
bzip2 ${F}
n=1
for file in $(ls -t $parcourir*); do
	if [ $i -gt 5 ]; then
		rm $file
	fi
	((i = i + 1))
done