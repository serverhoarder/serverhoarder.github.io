# Serverhoarder

## Lokale Entwicklung

### Setup

Linux ist empfpohlen.

Wenn Windows, das WSL Terminal verwenden.

Pakete installieren:

```sh
# Debian/Ubuntu
apt install python3 python3-setuptools python3-pip python3-venv
```

Virtualles Environment erstellen und aktivieren:

```sh
# venv erstellen
python3 -m venv env
# venv aktivieren
source ./env/bin/activate
# pakete im venv installieren
# https://stackoverflow.com/a/40167445/4161736
pip freeze | grep -v "pkg-resources" > requirements.txt
```

### Lokalen Server starten

```sh
./start-devserver.sh
```

### Python pakete installieren

venv sollte bereits eingerichtet sein.

```sh
# venv aktivieren
source ./env/bin/activate
# pakete installieren/aktualisieren/löschen
pip install some-awesome-stuff
# änderungen für git persistieren
pip freeze > requirements.txt
```
