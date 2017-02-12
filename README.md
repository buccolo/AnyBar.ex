# AnyBar [![Build Status](https://circleci.com/gh/buccolo/anybar.svg?style=shield)](https://circleci.com/gh/buccolo/anybar) [![Hex pm](https://img.shields.io/hexpm/v/anybar.svg?style=flat)](https://hex.pm/packages/anybar)

Elixir interface to [AnyBar](https://github.com/tonsky/AnyBar)

## Installation

First, add AnyBar to your `mix.exs` dependencies:

```elixir
def deps do
  [{:anybar, "~> 0.1.0"}]
end
```

Then, update your dependencies:
```sh-session
$ mix deps.get
```

## Usage

Your program can interact with AnyBar through the API:
```elixir
AnyBar.change("orange")
#=> :ok

AnyBar.change("red", 12345)
#=> :ok
```

Or by running a mix task:
```sh-session
$ mix anybar orange
```

Or by installing the escript:
```sh-session
$ mix escript.install anybar
./anybar blue
```
