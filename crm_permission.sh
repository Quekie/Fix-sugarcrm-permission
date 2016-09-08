
CRM_ROOT="/home/asi/crm.asiaction.com/"

echo "# **FIND ALL DIRECTORIES AND CHANGE THEIR MOD TO 755"
find -P ${CRM_ROOT} -type d -exec chmod 755  {} \;

echo "# **FIND ALL FILES AND CHANGE THEIR MOD TO 644"
find -P ${CRM_ROOT} -type f -exec chmod 644 {} \;

echo "# **Except config.php config_override.php sugarcrm.log need to be 664"

chmod 664 ${CRM_ROOT}"config.php"
chmod 664 ${CRM_ROOT}"config_override.php" 
chmod 664 ${CRM_ROOT}"*.log"

echo "# **The four Directories (cache custom data modules) below need to be 775"
 
find -P ${CRM_ROOT}"cache" -type d -exec chmod 775 {} \;

find -P ${CRM_ROOT}"custom" -type d -exec chmod 775 {} \;

find -P ${CRM_ROOT}"data" -type d -exec chmod 775 {} \;

find -P ${CRM_ROOT}"modules" -type d -exec chmod 775 {} \;

echo "# **All files in the directories below need to be 664"
echo "# ** cache/ and all subdirectories and files"
echo "# ** custom/ and all subdirectories and files"
echo "# ** data/ and all subdirectories and files"
echo "# ** modules/ and all subdirectories and files"

find -P ${CRM_ROOT}"cache" -type f -exec chmod 664 {} \;

find -P ${CRM_ROOT}"custom" -type f -exec chmod 664 {} \;

find -P ${CRM_ROOT}"data" -type f -exec chmod 664 {} \;

find -P ${CRM_ROOT}"modules" -type f -exec chmod 664 {} \;