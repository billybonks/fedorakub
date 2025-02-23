# set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
'

echo -e "$ascii_art"
echo "=> Omakub is for fresh Ubuntu 24.04+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo dnf update > /dev/null
sudo dnf upgrade -y > /dev/null
sudo dnf install -y curl git unzip >/dev/null


echo "Cloning Omakub..."
rm -rf ~/.local/share/omakub
git clone -b test https://github.com/billybonks/fedorakub.git ~/.local/share/omakub >/dev/null
# if [[ $OMAKUB_REF != "master" ]]; then
# 	cd ~/.local/share/omakub
# 	git fetch origin "${OMAKUB_REF:-stable}" && git checkout "${OMAKUB_REF:-stable}"
# 	cd -
# fi

echo "Installation starting..."
source ~/.local/share/omakub/install.sh


