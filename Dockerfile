FROM jepthoniq/jepthon:slim-buster

#clonning repo 
RUN git clone https://github.com/kekoviq/BatAr.git /root/BRUS
#working directory 
WORKDIR /root/BRUS

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/BRUS/bin:$PATH"

CMD ["python3","-m","BRUS"]
