FROM zapatacomputing/open-pack-base
WORKDIR /app

RUN apt-get install -y open-cobol
COPY src/welcome.cbl .
RUN cobc --free -x -o welcome welcome.cbl
