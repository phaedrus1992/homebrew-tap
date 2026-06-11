class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "1.0.10"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.10/llmenv-macos-aarch64"
      sha256 "524013c0e632ca06e37955dc8125ef7810f366a2b5be06d47e7cb0031031b13f"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.10/llmenv-macos-x86_64"
      sha256 "bf8b59ab3a6df5fb0ee3d432888311ad478608e20b535eed8dad3026792c8a01"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.10/llmenv-linux-x86_64"
      sha256 "9b3d2e7b2bdbe1436bf66112ff9816c1f9115ed6e4122e9ba1ff806cca5b4cc6"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
