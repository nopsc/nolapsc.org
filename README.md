# Deploy

## Let's Encrypt
sudo ./letsencrypt-auto certonly -a manual -d nolapsc.org -d www.nolapsc.org
cd /etc/letsencrypt/live/nolapsc.org/

Make sure your web server displays the following content at
http://nolapsc.org/.well-known/acme-challenge/ti9EKRxTjsOrjs4T8bYb6A10mQs1KNuusre-a6ZUfYM before continuing:

ti9EKRxTjsOrjs4T8bYb6A10mQs1KNuusre-a6ZUfYM.1lbWZ6KPCBTzz4-SiKR1Ilx6LtwpY4PbPhVRvKnAiVg

If you don't have HTTP server configured, you can run the following
command on the target server (as root):

mkdir -p /tmp/certbot/public_html/.well-known/acme-challenge
cd /tmp/certbot/public_html
printf "%s" ti9EKRxTjsOrjs4T8bYb6A10mQs1KNuusre-a6ZUfYM.1lbWZ6KPCBTzz4-SiKR1Ilx6LtwpY4PbPhVRvKnAiVg > .well-known/acme-challenge/ti9EKRxTjsOrjs4T8bYb6A10mQs1KNuusre-a6ZUfYM
# run only once per server:
$(command -v python2 || command -v python2.7 || command -v python2.6) -c \
"import BaseHTTPServer, SimpleHTTPServer; \
s = BaseHTTPServer.HTTPServer(('', 80), SimpleHTTPServer.SimpleHTTPRequestHandler); \
s.serve_forever()"
-------------------------------------------------------------------------------
Press Enter to Continue
Waiting for verification...
Cleaning up challenges
Generating key (2048 bits): /etc/letsencrypt/keys/0000_key-certbot.pem
Creating CSR: /etc/letsencrypt/csr/0000_csr-certbot.pem

IMPORTANT NOTES:
 - Congratulations! Your certificate and chain have been saved at
   /etc/letsencrypt/live/nolapsc.org/fullchain.pem. Your cert will
   expire on 2017-04-14. To obtain a new or tweaked version of this
   certificate in the future, simply run letsencrypt-auto again. To
   non-interactively renew *all* of your certificates, run
   "letsencrypt-auto renew"
 - If you lose your account credentials, you can recover through
   e-mails sent to info@nolapsc.org.
 - Your account credentials have been saved in your Certbot
   configuration directory at /etc/letsencrypt. You should make a
   secure backup of this folder now. This configuration directory will
   also contain certificates and private keys obtained by Certbot so
   making regular backups of this folder is ideal.
 - If you like Certbot, please consider supporting our work by:

   Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
   Donating to EFF:                    https://eff.org/donate-le
Make sure your web server displays the following content at
http://nolapsc.org/.well-known/acme-challenge/ti9EKRxTjsOrjs4T8bYb6A10mQs1KNuusre-a6ZUfYM before continuing:

ti9EKRxTjsOrjs4T8bYb6A10mQs1KNuusre-a6ZUfYM.1lbWZ6KPCBTzz4-SiKR1Ilx6LtwpY4PbPhVRvKnAiVg

If you don't have HTTP server configured, you can run the following
command on the target server (as root):

mkdir -p /tmp/certbot/public_html/.well-known/acme-challenge
cd /tmp/certbot/public_html
printf "%s" ti9EKRxTjsOrjs4T8bYb6A10mQs1KNuusre-a6ZUfYM.1lbWZ6KPCBTzz4-SiKR1Ilx6LtwpY4PbPhVRvKnAiVg > .well-known/acme-challenge/ti9EKRxTjsOrjs4T8bYb6A10mQs1KNuusre-a6ZUfYM
# run only once per server:
$(command -v python2 || command -v python2.7 || command -v python2.6) -c \
"import BaseHTTPServer, SimpleHTTPServer; \
s = BaseHTTPServer.HTTPServer(('', 80), SimpleHTTPServer.SimpleHTTPRequestHandler); \
s.serve_forever()"
-------------------------------------------------------------------------------
Press Enter to Continue
Waiting for verification...
Cleaning up challenges
Generating key (2048 bits): /etc/letsencrypt/keys/0000_key-certbot.pem
Creating CSR: /etc/letsencrypt/csr/0000_csr-certbot.pem

IMPORTANT NOTES:
 - Congratulations! Your certificate and chain have been saved at
   /etc/letsencrypt/live/nolapsc.org/fullchain.pem. Your cert will
   expire on 2017-04-14. To obtain a new or tweaked version of this
   certificate in the future, simply run letsencrypt-auto again. To
   non-interactively renew *all* of your certificates, run
   "letsencrypt-auto renew"
 - If you lose your account credentials, you can recover through
   e-mails sent to info@nolapsc.org.
 - Your account credentials have been saved in your Certbot
   configuration directory at /etc/letsencrypt. You should make a
   secure backup of this folder now. This configuration directory will
   also contain certificates and private keys obtained by Certbot so
   making regular backups of this folder is ideal.
 - If you like Certbot, please consider supporting our work by:

   Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
   Donating to EFF:                    https://eff.org/donate-le

## Gitlab
https://about.gitlab.com/2016/04/07/gitlab-pages-setup/#custom-domains
https://about.gitlab.com/2016/04/11/tutorial-securing-your-gitlab-pages-with-tls-and-letsencrypt/

Congratulations! Your certificate and chain have been saved at
  /etc/letsencrypt/live/nolapsc.org/fullchain.pem. Your cert will
  expire on 2017-01-13. To obtain a new or tweaked version of this
  ce Congratulations! Your certificate and chain have been saved at
  /etc/letsencrypt/live/nolapsc.org/fullchain.pem. Your cert will
  expire on 2017-01-13. To obtain a new or tweaked version of this
  ce

## Github
git subtree push --prefix=public git@git-nopsc:nopsc/nolapsc.org.git gh-pages
