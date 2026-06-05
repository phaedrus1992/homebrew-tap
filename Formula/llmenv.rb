class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "1.0.7"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.7/llmenv-macos-aarch64"
      sha256 "740fafa74f8fb7901dadc5f1e5049666cbf0c8e00731e3d6b926b336585d7518"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.7/llmenv-macos-x86_64"
      sha256 "85c84241fc79a87488458f2ab4a3e3a792441b2360787c9af63827170124ac03"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.7/llmenv-linux-x86_64"
      sha256 "7a67b9289ef58870caa4583f49bf5efada849256f4095eb1f9dedecc9b66a7a3"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
