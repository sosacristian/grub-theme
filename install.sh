echo ""
echo "Comenzando la instalación del tema."
echo ""
sudo echo
echo "Eliminando carpeta de temas."
sudo rm -r /boot/grub/themes
echo ""
echo "¡Carpeta de temas eliminada correctamente!"
echo ""
echo "Creando nueva carpeta de temas."
sudo mkdir /boot/grub/themes
sudo mkdir /boot/grub/themes/gnulinuxtheme
echo ""
echo "¡Carpeta de temas creada correctamente!"
echo ""
echo "Instalando tema."
sudo cp -r -a * /boot/grub/themes/gnulinuxtheme
echo ""
echo "¡Tema instalado correctamente!"
echo ""
echo "Configurando /etc/default/grub"
sudo sed -i '/^GRUB_THEME=/d' /etc/default/grub
echo | sudo tee -a /etc/default/grub
echo "¡/etc/default/grub configurado correctamente!"
echo ""
echo "OUTPUT ECHO:"
echo ""
echo "GRUB_THEME=/boot/grub/themes/gnulinuxtheme/theme.txt" | sudo tee -a /etc/default/grub
echo | sudo tee -a /etc/default/grub
echo "OUTPUT ECHO:"
echo "GRUB_BACKGROUND=/boot/grub/themes/gnulinuxtheme/grub.png" | sudo tee -a /etc/default/grub
echo ""
echo "Actualizando Grub."
echo ""
update-grub
echo ""
echo "¡Grub actualizado correctamente!"
echo ""
echo "Actualizando Grub 2"
echo ""
update-grub2
echo ""
echo "¡Grub 2 actualizado correctamente!"
echo ""
echo "El tema 'Gnu/Linux' para Grub/Grub2 se instaló y configuró correctamente. Reinicie su equipo para finalizar."
