# Serverhoarder

https://serverhoarder.github.io/

## Lokale Entwicklung

### Setup

Linux ist empfpohlen.

Wenn Windows, das WSL Terminal verwenden.

Pakete installieren:

```sh
# Debian/Ubuntu
apt install python3 python3-setuptools python3-pip python3-venv
```

Virtualles Environment einrichten und aktivieren:

```sh
# venv erstellen
python3 -m venv env
# venv aktivieren
source ./env/bin/activate
# pakete im venv installieren
python -m pip install -r requirements.txt
```

### Lokalen Server starten

Das virtuelle Environment sollte bereits eingerichtet sein.

```sh
# venv aktivieren
source ./env/bin/activate
# starten
./start-devserver.sh
```

### Python pakete installieren

Das virtuelle Environment sollte bereits eingerichtet sein.

```sh
# venv aktivieren
source ./env/bin/activate
# pakete installieren/aktualisieren/löschen
pip install some-awesome-stuff
# änderungen für git persistieren
# https://stackoverflow.com/a/40167445/4161736
pip freeze | grep -v "pkg-resources" > requirements.txt
```

### Virtuelles Environment verlassen

Beim aktivieren des virtuellen Environments wird eine Shell funktion in der aktuellen
Session definiert, welche er ermöglicht, das virtuelle Environment zu verlassen.

```sh
deactivate
```

## Deployment

GitHub Actions. Siehe [.github/workflows/sphinx.yml](.github/workflows/sphinx.yml).
