# backend


# docker

mostly just followed the instructions here: https://docs.docker.com/compose/rails/

the following should get you running

    docker-compose up
    docker-compose run web rake db:create
    docker-compose run web rake db:migrate
