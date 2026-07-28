class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.7.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.7.0/llmenv-macos-aarch64"
      sha256 "978366c9f2c375128f22765202f492a2991175ea47802185edbee0537652eb81"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.7.0/llmenv-macos-x86_64"
      sha256 "cbf2d445dbd374d6c02933d09accbc6399e49266fda28f69d76dc37136af40b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.7.0/llmenv-linux-aarch64"
      sha256 "6a96de6c9c9d9f78add2298b6b5060d505a2caa6ade0f31db237b3286aec3459"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.7.0/llmenv-linux-x86_64"
      sha256 "82e307dce80bfe6d8e621910c386c3d047a181e166c50dd1f0777e2c2994e6ef"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
