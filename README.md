# weapp-cli

A command line that generates a weapp project comfortably.

## Installation

```bash
$ gem install weapp-cli
```


## Usage

First, generate a weapp project from zero:

```bash
$ weapp-cli new project
```

it will generate files like this:

```bash
➜  workspace weapp-cli new project
create  project/README.md
create  project/app.json
create  project/app.js
create  project/app.wxss
create  project/.gitignore
create  project/pages/index/index.js
create  project/pages/index/index.wxml
create  project/pages/index/index.wxss
```

Second, generate a new page into a weapp project:

```bash
$ cd project
$ weapp-cli page page1
```

it will generate files like this:

```bash
➜  project weapp-cli page page1
create  pages/page1/page1.js
create  pages/page1/page1.wxml
create  pages/page1/page1.wxss
insert  app.json
```

With `weapp-cli`, you can focus on your bussiness logic at weapp development.

## Roadmap

[x] New project
[x] New page
[ ] Help
[ ] Support ES6
[ ] Add wiki for it
[ ] Add more test


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/windy/weapp-cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
