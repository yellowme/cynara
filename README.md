# Cynara
## Attention

## Installation


### Elixir
 You need the erlang virtual machine

#### Mac

brew install erlang

#### Linux

```
$ wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
$ sudo apt-get update
$ sudo apt-get install esl-erlang
```
 curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s

 kiex install 1.9.0

 Add in your ~/.basrc or ~/.zshrc or ~/.bash_profile,

 kiex use 1.9.0

 [reference] (https://github.com/taylor/kiex)

  mix local.hex

### Phoenix
  mix archive.install hex phx_new 1.4.9

  To start your Phoenix server:

    * Install dependencies with `mix deps.get`
    * Create and migrate your database with `mix ecto.setup`
    * Install Node.js dependencies with `cd assets && npm install`
    * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix


## Changelog

All changes are located in [the changelog file](CHANGELOG.md) with contribution notes

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
