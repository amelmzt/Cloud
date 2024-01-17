FROM python:3.11

#quel dossier on va utiliser /positionne toi dans le dossier app 
WORKDIR /app  
#execute les commandes lunix / execute le fichier apt-get unpdate 
#RUN apt-get update
#il va chercher le fichier requirement et le copier dans le dossier app et mettre les bibliotheque qu'on veut installer 
COPY requirements.txt .

RUN pip install -r requirements.txt
#recupere tous le code qui est dans le meme dossier 
COPY . .

CMD ["python3", "app.py"]