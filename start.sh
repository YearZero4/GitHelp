###COLORS###
start() {
GREEN="\033[1;32m"
RED="\033[1;32m"
WHITE="\033[1;37m"
YELLOW="\033[1;33m"

if [ "`uname -s`" = "Linux" ]; then
clear
figlet "GitHelp" && echo ""
else
clear
cat .banner
fi

n=1
temas=('Crear un nuevo repositorio' 'Clonar un repositorio existente' 'Ver el estado del repositorio' 'Agregar archivos al área de preparación' 'Hacer un commit' 'Ver el historial de commits' 'Crear una nueva rama' 'Cambiar a otra rama' 'Combinar ramas (merge)' 'Enviar cambios a un repositorio remoto' 'Actualizar tu repositorio local con los cambios del remoto' 'Eliminar una rama' 'Revertir un commit' 'Ver diferencias entre commits' 'Ver todos')
code=("git init nombre-del-repositorio" "git clone https://github.com/usuario/nombre-del-repositorio.git" "git status" "git add nombre-del-archivo\n\n${WHITE}O todos los archivos\n\n${GREEN}git add ." "git commit -m \"Mensaje del commit\"" "git log" "git branch nombre-de-la-rama" "git checkout nombre-de-la-rama" "git checkout rama-principal" "git merge nombre-de-la-rama" "git push origin nombre-de-la-rama" "git branch -d nombre-de-la-rama" "git revert id-del-commit" "git diff id-del-commit1 id-del-commit2")

for i in "${temas[@]}"; do
if [ $n -lt 10 ]; then
echo -e "${GREEN}[0${n}] ${WHITE}$i"
else
echo -e "${GREEN}[${n}] ${WHITE}$i"
fi
((n=$n+1))
done

echo -e -n "\n${WHITE}Seleccionar Opcion => ${GREEN}"
read number
echo ""
nx=1
if [ "$number" -eq 15 ]; then
for i in {0..13}; do

echo -e "[${nx}] ${WHITE}${temas[$i]}\n${GREEN}=> ${code[$i]}\n"
((nx=$nx+1))
done
elif [ "$number" -ge 1 ] && [ "$number" -le 14 ]; then
echo -e "${code[$number-1]}"
else
echo "Opción no válida"
fi

echo -e -n "\n${WHITE}Presione [ENTER] Para Continuar..."
read
start
}
start