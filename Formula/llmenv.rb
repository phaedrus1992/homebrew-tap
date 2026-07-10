class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.1.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.1.0/llmenv-macos-aarch64"
      sha256 "ae76db04093421c65ffc438106d96c2662c2966c687c7221c8de99f2d3e5eef3"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.1.0/llmenv-macos-x86_64"
      sha256 "e7894b220949d25604f3e3d6dec9b242e9cf0d22804d44e09e32dc6c27e96d67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.1.0/llmenv-linux-aarch64"
      sha256 "20ab9b120d0fc609c686b72fa8dc1d9e853f220e77a5a3faf833d3ccd955836d"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.1.0/llmenv-linux-x86_64"
      sha256 "cac577bc7c5f30bdaa458a76efbe7fae303f0d878ab9a343b8c198159e68c2ac"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
