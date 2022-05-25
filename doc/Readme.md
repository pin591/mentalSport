No hem utilitzat cap API com a tal, únicament ens hem connectat a un fitxer .json pujat al labs

Per cridar al labs, hem utilitzat la funció loadData(), on ens connectavem a la url del json, i un cop dins, feiem un decode de tot el que contenía,
un cop fet el decode, l'aplicació ens retornava tots els resultats mitjançant una aplicació REST

Per començar, cridem a la classe mentalSportApp.swift, que aquesta iniciarà la view de LoginView(), que ens mostrarà la pantalla de login, al fer login o bé registrar-nos, cidarà a MainView, al cridar-la
ens apareixerà una TabView per poder navegar entre classes

La classe HomeView ens mostrarà totes les activitats del json i ens donarà la possibilitat de reservar-les, a rankView podrem veure un ranking de
totes les persones amb els seus punts, per últim a la customSettingsView podem veure les dades de l'usuari per si l'usuari vol modificar les seves dades
o canviar alguna preferencia de l'app
