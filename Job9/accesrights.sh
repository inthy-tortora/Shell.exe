MY_IMPUT='/home/inthy/Documents/Shell.exe/Job9/Shell_Userlist.csv'
declare -a Id
declare -a PRENOM
declare -a NOM
declare -a MOT_DE_PASSE
declare -a ROLE
while IFS=, read -r COL1 COL2 COL3 COL4 COL5 TRASH; do
	ID+=("$COL1")
	PRENOM+=("$COL2")
	NOM+=("$COL3")
	MOT_DE_PASSE+=("$COL4")
	ROLE+=("$COL5")
done <"$MY_IMPUT"

for index in "${!PRENOM[@]}"; do
	sudo useradd -d  "/home/${PRENOM[$index]}" -s /bin/bash -p "$(echo "${MOT_DE_PASSE[$index]}" | openssl passwd -stdin)" -u "${ID[$index]}" --badnames "${PRENOM[$index]} ${NOM[$index]}"
done
