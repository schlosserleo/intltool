Template: timezoneconf/toplevel
Type: select
Choices: ${choices}
Default: US
Default-fr: Europe
Description: Select Area
 Please select your geographical area from the choices provided.  If you
 are in the United States, you can just use the US option.  You can also
 find UTC and GMT-offset zone settings in the Etc directory.
Description-fr: S�lectionnez la zone
 Veuillez s�lectionner votre zone g�ographique � partir des choix propos�s.
 Vous pouvez �galement trouver les param�tres de d�calage horaire UTC et
 GMT dans le r�pertoire /etc.

Template: timezoneconf/zone
Type: select
Choices: ${choices}
Description: Time zone
 Please select the time zone that is appropriate for your location.
Description-fr: Fuseau horaire
 Veuillez s�lectionner le fuseau horaire appropri� � votre emplacement.

Template: timezoneconf/month
Type: select
Choices: January, February, March, April, May, June, July, August, September, October, November, December
Choices-fr: janvier, f�vrier, mars, avril, mai, juin, juillet, ao�t, septembre, octobre, novembre, d�cembre
Description: Current month?
Description-fr: Mois en cours�?
char *s = N_("Current month?");
char *s = N_("January, February, March, April, May, June, July, August, September, October, November, December");
char *s = N_("Please select the time zone that is appropriate for your location.");
char *s = N_("Please select your geographical area from the choices provided.  If you are in the United States, you can just use the US option.  You can also find UTC and GMT-offset zone settings in the Etc directory.");
char *s = N_("Select Area");
char *s = N_("Time zone");
char *s = N_("US");
