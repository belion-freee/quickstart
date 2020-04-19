# quickstart
You can easily create Rails templates using docker-compose.
It uses PostgreSQL or MySQL for the database and webpacker on the front end, so modern development using ES 6 is possible.

If you want to use Rails 6.0 or later, please use [this branch] (https://github.com/belion-freee/quickstart/tree/rails6).

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

- `minitest` : Setup with this option if you need Minitest.
- `webpack` : Setup with this option if you need Webpacker.
- `react` : Setup with this option if you need React.
- `vue` : Setup with this option if you need Vue.
- `angular` : Setup with this option if you need Angular.
- `mysql` : Setup with this option if you need to setup db with MySQL.

```
./qs setup minitest webpack mysql
```

## Hello World!!
Finally, please access `http://localhost:3000` as Rails is running.
Enjoy your Rails!

## Do you use Windows?
It has been reported that scripts do not work properly on Windows.
If it does not work properly, please install it referring to the following branch.

[With PostgreSQL](https://github.com/belion-freee/quickstart/tree/for_win_pg#clone-this-repository)
[With MySQL](https://github.com/belion-freee/quickstart/tree/for_win_mysql#clone-this-repository)

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

## Development

### debug
you can use byebug.

https://qiita.com/TYuko/items/d46f5dc91dd488574273
