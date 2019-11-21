FROM frapsoft/openssl

RUN openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -days 365 -nodes -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.example.com"
ENTRYPOINT ["openssl", "s_server", "-key", "key.pem", "-cert", "cert.pem", "-accept", "44330", "-www", "-debug"]
