# quickstart
You can easily create Rails templates using docker-compose.
It uses PostGresql for the database and webpacker on the front end, so modern development using ES 6 is possible.

## Install Docker
Please install Docker on your PC first.
Refer to [here](https://docs.docker.com/install/) for the installation procedure.

If you are a Linux user you need to install docker-compose with [this operations](https://docs.docker.com/compose/install/#install-compose).

## Clone this repository
Then clone the repository and move to project folder.

```
git clone git@github.com:belion-freee/quickstart.git
cd quickstart
```

## Execute Setup
Only you need to execute setup shell.

```
./setup
```

## Hello World!!
Finally, please access `http://localhost:3000` as Rails is running.
Enjoy your Rails!

Please remove setup　shell because it is unnecessary anymore.
```
rm ./setup
```
