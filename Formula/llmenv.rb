class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.8.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.8.0/llmenv-macos-aarch64"
      sha256 "cad1c07d1ad4d1f286e9bd978f8338243bd5998c94db954e8ac1488f6a98c5f0"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.8.0/llmenv-macos-x86_64"
      sha256 "4c363f1de4e7e08d505a00ca3d559f8cad8324891d8e2662a71c089e443eb9d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.8.0/llmenv-linux-aarch64"
      sha256 "96e7a869b41819b2fd0c20fd21ad78941d712a73a33b33c32cd29ed7777c2e58"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.8.0/llmenv-linux-x86_64"
      sha256 "651d82b7128c59c48a58de18de916d126ad10ebbc012071246273adcae05acc8"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
