sudo dnf -y install dnf-plugins-core

# Run terminal installers
for installer in ~/.local/share/omakub/install/terminal/*.sh; do source $installer; done
