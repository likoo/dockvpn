CID=$(docker run -d --rm --privileged -p 1194:1194/udp -p 443:443/tcp --name dockvpn  naokiro/dockvpn)
docker run -t -i --rm -p 8080:8080 --volumes-from $CID naokiro/dockvpn serveconfig