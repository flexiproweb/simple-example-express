FROM node:23.11.0
# Ini adalah directory didalam docker BUKAN di local komputer yang digunakan
WORKDIR /usr/src/app


# Copy all project files (including src/, public/, etc.)
COPY . .

# Install dependencies and build the project
RUN npm install --force 

# Expose your app port (ini adalah port yang berada di docker, BUKAN di local komputer)
EXPOSE 3000 

CMD ["npm", "run", "start"]

# command untuk build
# -t artinya kita akan memberikan tag (Nama) pada image yang kita buat
    # --perintah-- | docker build -t simple-example-express .


# ini adalah untuk membuat container baru
#  run artinya kita akan menjalankan container
# - p 4000:3000, 4000 adalah port di local atau post untuk mengakses aplikasinya, sedangkan 3000 adalah port yang ada di docker.
    # artinya kita akan mapping port 4000 di local ke port 3000 di container
# --name artinya kita akan memberikan nama pada container 
# ada 2  simple-example-express, yang pertama adalah nama container yang ketika berikan, yang kedua adalah mau ambil image apa, kebetulan disini namanya sama
    # --printah-- | docker run -p 4000:3000 --name simple-example-express simple-example-express