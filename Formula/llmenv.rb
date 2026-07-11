class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.2.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.2.0/llmenv-macos-aarch64"
      sha256 "f40f645d789c7320f5e2c044cd68d6ad36c1dad0e09bbd7d58e6923144e7889a"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.2.0/llmenv-macos-x86_64"
      sha256 "33f1c9bbcec7e04ed381884e38d6a63b887131321eecb26914c00a2600aeecbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.2.0/llmenv-linux-aarch64"
      sha256 "916a6eefff45b239c7a4c459153f7d43d877acabb27282f1919e2a40e1da34fc"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.2.0/llmenv-linux-x86_64"
      sha256 "47f665afbbea65f04668ae7d53b02db6de60168d8abb294a6655a8b7d68f1ae6"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
