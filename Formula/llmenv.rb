class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "2.0.2"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.2/llmenv-macos-aarch64"
      sha256 "024105a16d3ffedfc760c4d43718be14323c7ab40f8718cfff450f0b48c2628c"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.2/llmenv-macos-x86_64"
      sha256 "078a91816fca21101e504bcfa071892ed6be954701a1703f94c6be3c006774ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.0.2/llmenv-linux-x86_64"
      sha256 "d27ea68c95fb8cf3a01486aaf7f3351d54a8939b3cc7d4c9a3adc705c7ad4ef1"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
