class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.13.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.13.0/llmenv-macos-aarch64"
      sha256 "33318cccba4b2ad527d0a870f63a5aa71dc0bd2fcb746f6e91fa81d2d8b3912b"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.13.0/llmenv-macos-x86_64"
      sha256 "2e1edefc9ce969b9d252f25c2de22625c70e4a2c847e4ae750feabee799c2724"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.13.0/llmenv-linux-aarch64"
      sha256 "f6d88ad7ca99beef559c3902bac9b80be63581050817e24f786a4a8f7bdcbc5e"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.13.0/llmenv-linux-x86_64"
      sha256 "28d45f1276822065384d7b1ffe77419e2cafd344cc3951e0cf299cec75722bae"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
