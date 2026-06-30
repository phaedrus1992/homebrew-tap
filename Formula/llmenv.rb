class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "2.3.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.3.0/llmenv-macos-aarch64"
      sha256 "579788a65f6ebd80fa0d4ed4e98187f9e594f0b3b6acd0a96d43fa35eb410a7f"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.3.0/llmenv-macos-x86_64"
      sha256 "fdd2a7a6345e90aef08811268303ceda9f45f4aa2a305da2fbd0c912063a28ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.3.0/llmenv-linux-aarch64"
      sha256 "6f53ab04aaa78835649beb216349b928edf44a784d7aec9d57a6fc7d21728cf8"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.3.0/llmenv-linux-x86_64"
      sha256 "f39280172ff8da25c5fa80c48ac280ff513ca0e8f060e5bd9ada7fa2503e1eca"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
