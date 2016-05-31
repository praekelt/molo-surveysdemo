cd "${INSTALLDIR}/${NAME}/demoapp/"
manage="${VENV}/bin/python ${INSTALLDIR}/${NAME}/demoapp/manage.py"

$manage migrate --settings=demoapp.settings.production

# process static files
$manage compress --settings=demoapp.settings.production
$manage collectstatic --noinput --settings=demoapp.settings.production

# compile i18n strings
$manage compilemessages --settings=demoapp.settings.production
