# ExAcme

A Elixir client for the letsencrypt's ACME protocol.

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
