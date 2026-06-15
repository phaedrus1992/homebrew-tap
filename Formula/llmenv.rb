class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "2.0.3"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.3/llmenv-macos-aarch64"
      sha256 "d2b6f7b6bed1d66b4da11dd96ebd6278824db0810f9416a5beba28a39e043285"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.3/llmenv-macos-x86_64"
      sha256 "b98d5b37a2c6cd48fc416c8ca7afe56f9c6e799979d7a6b25067edaadbe6affe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.3/llmenv-linux-x86_64"
      sha256 "bff834ee22f7a4cb6ed17789c65d7cc60f6b8927eabc6f880634f55d4276e64c"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
