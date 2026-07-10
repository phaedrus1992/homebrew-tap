class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "2.4.1"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.4.1/llmenv-macos-aarch64"
      sha256 "6668db912b04341769958750a5968d7bcdc08b8e8a5fe3a2b737ece238a6d328"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.4.1/llmenv-macos-x86_64"
      sha256 "2ae9ad3e8bc94722f2e0207635bdcf2fb60f9a8200eff1229bb7b63c2575df57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.4.1/llmenv-linux-aarch64"
      sha256 "70e1857789227c5f61d8da76e84a10454da2f5d9b3415b3ac0313bdf54e74ad8"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.4.1/llmenv-linux-x86_64"
      sha256 "0716de2e1e6a298a7e440136d27b32bb159db00f2f89bfa0dc1f4037079404cb"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
