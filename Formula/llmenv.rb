class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "2.1.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.1.0/llmenv-macos-aarch64"
      sha256 "15a84a20fb82c6dfa69dd2b0b11ab7ac63b1dd85049282bb700a9ac20b5aff3a"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.1.0/llmenv-macos-x86_64"
      sha256 "66d0099dee220172ba0bd8269b6851b2f8cd6e0be4991e3014fbfb73f0238879"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.1.0/llmenv-linux-aarch64"
      sha256 "7a31382bf6679bed19049090d8ec07387e5f8747658715a20dcc69b237129f43"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.1.0/llmenv-linux-x86_64"
      sha256 "7da369741600da3eaec77dff87509ad9990d41e7c419287096042914d58a2451"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
