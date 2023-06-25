COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN apt-get update
RUN apt-get -y install libgl1-mesa-glx
CMD [ "python", "watershed.py" ]
