class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.0.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.0.0/llmenv-macos-aarch64"
      sha256 "a2dba07b5961a1e70c174da5a171ae10f18ef5636a4af48aebf43db7705332a7"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.0.0/llmenv-macos-x86_64"
      sha256 "37aefba44f56de1c4c78c9d293425df956c18558ac486e5666a2a159c31572e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.0.0/llmenv-linux-aarch64"
      sha256 "a679687d1b48659f1263445bdaafcb4661d6736271da679e5063a561429b300b"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.0.0/llmenv-linux-x86_64"
      sha256 "b590eec90424d2ddce4f922e05507a1bbd3870238fa7309edc463985dd652b0d"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
