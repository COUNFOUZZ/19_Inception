FROM debian:bullseye

RUN apt update -y && apt -y upgrade
RUN apt install nginx -y && apt install openssl -y

# The req command is used to generate a certificate signing request (CSR) or a self-signed certificate. The -x509 option tells OpenSSL to generate a self-signed certificate instead of a CSR.
# The -nodes option tells OpenSSL not to encrypt the private key with a passphrase. This means that the private key will not be protected by a password, and it will be stored in plaintext. This is generally not recommended for production environments, as it can make the key more vulnerable to unauthorized access.
# The -days option specifies the number of days that the certificate should be valid for. In this case, the certificate will be valid for 365 days (one year).
# The -newkey option specifies that a new private key should be generated. The rsa:2048 argument tells OpenSSL to generate an RSA key with a length of 2048 bits.
# The -keyout option specifies the file where the private key should be stored, and the -out option specifies the file where the certificate should be stored.
# The -subj option specifies the subject of the certificate :
    # C = country
    # ST = state
    # L = location
    # O = organization
    # OU = organizational unit
    # CN = common name

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=BE/ST=BRU/L=1000-Bruxelles/O=42NETWORK/OU=student/CN=aabda"
RUN mkdir -p /var/run/nginx

COPY ./conf/nginx.conf /.
COPY ./run.sh /.

CMD ["bash", "run.sh"]