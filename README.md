# backend


# docker

mostly just followed the instructions here: https://docs.docker.com/compose/rails/

the following should get you running

    docker-compose up
    docker-compose run web rake db:create
    docker-compose run web rake db:migrate

# dropbox

to get the dropbox container linked, currently need to first run

    docker-compose up dropbox

to link to the boxenite dropbox account. once this has completed
CTRL-c once to shut down.

since one cannot include only select folders for syncing my current
test setup is to have a boxenite dropbox account and a shared folder
user/boxenite (where user is a hash of the email) that contains the
project source code.
