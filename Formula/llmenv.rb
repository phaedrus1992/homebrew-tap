class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "2.0.5"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.5/llmenv-macos-aarch64"
      sha256 "707d0fe1a9b67ab87735a984a11aea57b55ff4846e1a4556db24cf541f10cb18"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.5/llmenv-macos-x86_64"
      sha256 "6fabe8dd78aee9ef1b9029247b3b71e6f3da365d87004909c0bf75968e6d4548"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.5/llmenv-linux-aarch64"
      sha256 "1834c14f59bdf139c37b2e15c605e13acf730de2f78286a5204f0674aa5835be"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.5/llmenv-linux-x86_64"
      sha256 "8cb28b0b1c17c1d652b6844d6f03425e3c504f9786840dbd749df19fe0df5471"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
