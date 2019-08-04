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
git clone https://github.com/belion-freee/quickstart.git <Project name>
cd <Project name>
```

It may be easier to fork. In that case, please change the repository name from Settings -> Rename after fork.

## Execute Setup
Only you need to execute setup shell.

```
./qs setup
```

### Options
There are options to create new rails project.

- `test=true` : Setup with this option if you need Minitest.
- `webpack=true` : Setup with this option if you need Webpacker.
- `db=mysql` : Setup with this option if you need to setup db with MySQL.

```
./qs setup test=true webpack=true db=mysql
```

## Hello World!!
Finally, please access `http://localhost:3000` as Rails is running.
Enjoy your Rails!

## Other services
You can use also those services!

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
