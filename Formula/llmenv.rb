class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "2.0.4"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.4/llmenv-macos-aarch64"
      sha256 "0b738cf99cb631be779ea4a33ad4a5d54ba25283c36130cd1aa4877a927139c9"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.4/llmenv-macos-x86_64"
      sha256 "2ab1ac0ef9d059f957877ca360a8ff36cc2f380f81e14e6d6ec58c728b45c10e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.4/llmenv-linux-aarch64"
      sha256 "8d89363929aaa3139264a614805f8c3eb8d5a6536d5b2c23bf9e63117f166321"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.4/llmenv-linux-x86_64"
      sha256 "c422082f3185e4a3d50d39399dfb6ab8e39a1e5994be84b2aab6fa18b915c3c6"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
