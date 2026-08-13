class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.10.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.10.0/llmenv-macos-aarch64"
      sha256 "4f3a316829c1033c243c8d3769c1a76c999f5509ef07fa0056d3d228cb4f04af"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.10.0/llmenv-macos-x86_64"
      sha256 "efd2c150e93038000fb6c002a04d48121358c346e3042abc64580a6f5475e191"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.10.0/llmenv-linux-aarch64"
      sha256 "d2d5c952f17ed4ada5a070aafa5329b064ae393f3a0ac3c7776c5e6e1db12145"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.10.0/llmenv-linux-x86_64"
      sha256 "2cd04b68a1f4a22141b9d6685223878d6b717aa0397bcaea0ce61d024e5a0dfd"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
