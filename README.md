# quickstart
You can easily create Rails 6.0 templates using docker-compose.
It uses PostgreSQL for the database and webpacker on the front end, so modern development using ES 6 is possible.

詳細な手順は[Qiita](https://qiita.com/belion_freee/items/f0ef60a08299c9febbdf)にも載せてあります。

## Install Docker
Please install Docker on your PC first.
Refer to [here](https://docs.docker.com/install/) for the installation procedure.

If you are a Linux user you need to install docker-compose with [this operations](https://docs.docker.com/compose/install/#install-compose).

## Clone this repository
Then clone the repository and move to project folder.
Plese set your project name like `sample_app`.

```
git clone -b rails6 https://github.com/belion-freee/quickstart.git <Project name>
cd <Project name>
```

It may be easier to fork. In that case, please change the repository name from Settings -> Rename after fork.

## Execute Setup
Only you need to execute setup shell.

```
./qs setup
```

### Default
This templates use webpacker, postgresql and don't use minitest.

### Options
You can use the options available with `rails new` commands.

```
./qs setup -T --webpack=react
```

### Other
#### Ignoring warning
You may get a lot of warnings about [~ because its extensions are not built. Try ~].You can ignore Those warnings.

But if this warnings annoys you, Please execute the command displayed in the warning or execute `./qs bundle exec gem pristine --all`.

## Hello World!!
Finally, please access `http://localhost:3000` as Rails is running.
Enjoy your Rails!

## Do you wana use MySQL?
If you want to use MySQL, please install it referring to the following branch.

[MySQL](https://github.com/belion-freee/quickstart)

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
