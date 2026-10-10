class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.12.2"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.12.2/llmenv-macos-aarch64"
      sha256 "4a5b552f6ce4ec5094b6eed6cc679f577e8b80afa41a7f716e53604f13db794c"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.12.2/llmenv-macos-x86_64"
      sha256 "347c7c40811d655309f6e9c791962ca1cf85c79cf2556b909a0163f21f4c2424"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.12.2/llmenv-linux-aarch64"
      sha256 "bedd31e757841a7d0e0a0fa2e20ac539216c04962e44c9555837c6bf3160bb7e"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.12.2/llmenv-linux-x86_64"
      sha256 "d96bae9e6aeb9e989ba6a028973e1dc4afb5ecc6b2c8865a3cd2e1de65b524e0"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
