# ExAcme [![Build Status](https://travis-ci.org/schurig/ex-acme.svg?branch=master)](https://travis-ci.org/schurig/ex-acme) [![Inline docs](http://inch-ci.org/github/schurig/ex-acme.svg)](http://inch-ci.org/github/schurig/ex-acme) [![Deps Status](https://beta.hexfaktor.org/badge/all/github/schurig/ex-acme.svg)](https://beta.hexfaktor.org/github/schurig/ex-acme) [![Hex.pm](https://img.shields.io/hexpm/v/ex-acme.svg?maxAge=3600)](https://hex.pm/packages/ex-acme)

A Elixir client for the letsencrypt's ACME protocol.

**Warning: not production ready yet!**

Feel free to contribute :)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `ex_acme` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:ex_acme, "~> 0.1.0"}]
    end
    ```

  2. Ensure `ex_acme` is started before your application:

    ```elixir
    def application do
      [applications: [:ex_acme]]
    end
    ```
