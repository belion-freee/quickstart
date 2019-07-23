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

## Execute Setup
Only you need to execute setup shell.

```
./qs setup
```

### Options
There are options to create new rails project.

- `test=true` : Setup with this option if you need Minitest.
- `webpack=false` : Setup with this option if you don't need Webpacker.
- `db=mysql` : Setup with this option if you need to setup db with MySQL.

```
./qs setup test=true webpack=false db=mysql
```

## Hello World!!
Finally, please access `http://localhost:3000` as Rails is running.
Enjoy your Rails!

## Other container
You can use also `spring container` and `solargraph container`!

### Spring container
Execute `./qs up spring` command.
And you can execute some command like `./qs spring rails c`, `./qs spring rails db:migrate`.

### Solargraph container
If you use solargraph container at first time, Please Add `gem 'solargraph', group: :development` to Gemfile, And execute `./qs bundle install` command.

Execute `./qs up solargraph` command.

Now, You can use solargraph server.
