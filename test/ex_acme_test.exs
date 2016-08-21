defmodule ExAcmeTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  doctest ExAcme

  setup_all do
    HTTPoison.start()
    ExVCR.Config.cassette_library_dir("test/fixture/vcr_cassettes", "test/fixture/custom_cassettes")
    :ok
  end

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "custom with valid response" do
    use_cassette "example_response", custom: true do
      assert HTTPoison.get!("http://example.com").body =~ ~r/Example Domain/
    end
  end
end
