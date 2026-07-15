class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.5.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.5.0/llmenv-macos-aarch64"
      sha256 "e70f984c0722ba242648e8d3d14964f3eac21a87ef9850b7465bd57aa67ab5ba"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.5.0/llmenv-macos-x86_64"
      sha256 "9ec9608401c0a1e85830dce1884fd8277aad8f1a2525282a6ff8487b7ddb92f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.5.0/llmenv-linux-aarch64"
      sha256 "d8ded7fa0ed088a281fc3c3545f268f47447352c669fb60d7d39bdfa5b5944c8"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.5.0/llmenv-linux-x86_64"
      sha256 "41916ee006fa222a3ef3c83c7973d2061cf79a04014379e30f1f6f52d4da9974"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
