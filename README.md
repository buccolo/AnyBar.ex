# AnyBar [![Build Status](https://circleci.com/gh/buccolo/anybar.svg?style=shield)](https://circleci.com/gh/buccolo/anybar) [![Hex pm](https://img.shields.io/hexpm/v/anybar.svg?style=flat)](https://hex.pm/packages/anybar)

Elixir interface to AnyBar app

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

```elixir
AnyBar.change("orange")
#=> :ok

AnyBar.change("red", 12345)
#=> :ok
```
