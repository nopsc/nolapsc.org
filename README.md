# Deploy

## Let's Encrypt
./letsencrypt-auto certonly -a manual -d nolapsc.org

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
