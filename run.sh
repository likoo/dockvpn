CID=$(docker run -d --rm --privileged -p 1194:1194/udp -p 443:443/tcp --name dockervpn  naokiro/dockervpn)
docker run -t -i -p 8080:8080 --volumes-from $CID naokiro/dockervpn serveconfig