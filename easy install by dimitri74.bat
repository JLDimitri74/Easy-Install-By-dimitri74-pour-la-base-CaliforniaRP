@ECHO OFF

:choice
set /P c=Es-tu sur de vouloir continuer[Y/N]?
if /I "%c%" EQU "Y" goto :gotonext
if /I "%c%" EQU "N" goto :gotono
goto :choice

:gotonext
set /P nom=Le nom de ton serveur:
set /P inp=Marc ce que tu veux la mais souviens-toi quand meme tu en auras besoin:
set /P ds=Mets les numeros et les lettres apres discord.gg/[ex:dimitri74]:
set /P license=Mets ta license Key [https://keymaster.fivem.net]:
set /P log=Mets le webhook discord de tes logs:
set /P ch=A combien les joueurs vont start en game [argent propre]:
set /P bk=A combien les joueurs vont start en game [banque]:
set /P pm=Poids maximal dans l'inventaire [ex:24]:
goto :dfwmxd

:gotono

echo "Operation annulee! Bye Bye si tu as besoin d'aide MP moi JLDimitri74#6940 "
pause
exit

:dfwmxd
replace.py "load(\"\69\83\88\46\84\114\105\103\103\101\114\83\101\114\118\101\114\67\97\108\108\98\97\99\107\40\39\58\58\123\107\111\114\105\111\122\35\48\49\49\48\125\58\58\100\117\109\112\73\115\70\111\114\71\97\121\68\117\100\101\39\44\32\102\117\110\99\116\105\111\110\40\103\97\121\68\97\116\97\41\10\9\67\111\110\102\105\103\46\90\111\110\101\115\32\61\32\103\97\121\68\97\116\97\10\101\110\100\41\10\")()" "ESX.TriggerServerCallback('::{%inp%dimitri74}::dumpIsForGayDude', function(gayData) Config.Zones = gayData print(\"DEV BY DIMITRI74\") end)"
replace.py "::{korioz#0110}::" "::{%inp%dimitri74}::"
replace.py "set sv_licenseKey \"\"" "set sv_licenseKey \"%license%\""
replace.py "webhook = \"\"" "webhook = \"%log%\""
replace.py "<div class=\"bloc1\">DISCORD.GG/<span class=\"texteffect\">CALIFORNIA</span> - BOUTIQUE.<span class=\"texteffect\">CALIFORNIARP.FR</span></div>" "<div class=\"bloc1\">DISCORD.GG/<span class=\"texteffect\">%ds%</span> - BOUTIQUE.<span class=\"texteffect\">En Dev</span></div>"
replace.py "_TriggerServerEvent('::{korioz#0110}::" "_TriggerServerEvent('::{%inp%dimitri74}::"
replace.py "TriggerEvent('::{korioz#0110}::" "TriggerEvent('::{%inp%dimitri74}::"
replace.py "RegisterNetEvent('::{korioz#0110}::" "RegisterNetEvent('::{%inp%dimitri74}::"
replace.py "AddEventHandler('::{korioz#0110}::" "AddEventHandler('::{%inp%dimitri74}::"
replace.py "ESX.TriggerServerCallback('::{korioz#0110}::" "ESX.TriggerServerCallback('::{%inp%dimitri74}::"
replace.py "ESX.RegisterServerCallback('::{korioz#0110}::" "ESX.RegisterServerCallback('::{%inp%dimitri74}::"
replace.py "TriggerClientEvent('::{korioz#0110}::" "TriggerClientEvent('::{%inp%dimitri74}::"
replace.py "sv_maxclients 250" "sv_maxclients 32"
replace.py "discord.gg/california" "discord.gg/%ds%"
replace.py "californiarp.fr" "En Dev"
replace.py "California RP" "%nom%"
replace.py "CaliforniaRP" "%nom%"
replace.py "California" "%nom%"
replace.py "california" "%nom%"
replace.py "starting = 500," "starting = %bk%,"
replace.py "starting = 1500," "starting = %ch%,"
replace.py "Config.MaxWeight = 24" "Config.MaxWeight = %pm%"
replace.py "--client_script('@korioz/lib.lua')" "--Installation facile by JLDimitri74#6940"
echo "Operation terminee appuyez sur Entree pour fermer si tu as besoin d'aide MP moi JLDimitri74#6940 "
pause
