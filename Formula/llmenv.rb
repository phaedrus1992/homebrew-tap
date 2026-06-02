class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "1.0.2"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.2/llmenv-macos-aarch64"
      sha256 "aa089ead474ae2d7b171d2dd7cd54a242c9b0cc8e772b71646354f2c045adb1a"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.2/llmenv-macos-x86_64"
      sha256 "d56d3e408b46ee6f1d1f03ef89a2c33de9e67977695675d4407c790b4c70e873"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.2/llmenv-linux-x86_64"
      sha256 "540d9bcc7021ede042fe50e9d6915f4fbee0aaa67b9e5f9e73e8a3ff329a8d6f"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
