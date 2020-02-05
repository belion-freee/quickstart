# quickstart
You can easily create Rails templates using docker-compose.
It uses PostgreSQL or MySQL for the database and webpacker on the front end, so modern development using ES 6 is possible.

詳細な手順は[Qiita](https://qiita.com/belion_freee/items/f0ef60a08299c9febbdf)にも載せてあります。

## Install Docker
Please install Docker on your PC first.
Refer to [here](https://docs.docker.com/install/) for the installation procedure.

If you are a Linux user you need to install docker-compose with [this operations](https://docs.docker.com/compose/install/#install-compose).

## Clone this repository
Then clone the repository and move to project folder.
Plese set your project name like `sample_app`.

```
git clone -b for_win_mysql https://github.com/belion-freee/quickstart.git <Project name>
cd <Project name>
```

It may be easier to fork. In that case, please change the repository name from Settings -> Rename after fork.

## Execute Setup
Please execute command manually.

```
docker-compose run --rm web bundle install
docker-compose run --rm web bundle exec rails new . -f -d=mysql
docker-compose run --rm web bundle update
mv database.yml config/database.yml
docker-compose run --rm web bundle exec rails db:create
docker-compose up web
```

## Hello World!!
Finally, please access `http://localhost:3000` as Rails is running.
Enjoy your Rails!

### Didn't work
Mounting may fail when using VirtualBox.
Make the path specified for volumes a full path.

And VirtualBox only available under `/c/Users/` dir.

```
web: &app
    build: .
    command: bundle exec rails s -p 3000 -b '0.0.0.0'
    volumes:
      - /c/Users/<path>:/app:cached # modify this line!
      - bundle:/usr/local/bundle:cached
      - /app/.git
```

## Other services
You can use also those services!
But the `./qs` command mey be not working. because windows.

### Spring service
Execute `./qs up spring` command.
And you can execute some command like `./qs spring rails c`, `./qs spring rails db:migrate`.

### Solargraph service
If you use solargraph container at first time, Please Add `gem 'solargraph', group: :development` to Gemfile, And execute `./qs bundle install` command.

Execute `./qs up solargraph` command.

Now, You can use solargraph server.

### Redis service
Execute `./qs up redis` command.

### Chrome service
Execute `./qs up chrome` command.
