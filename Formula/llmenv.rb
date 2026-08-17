class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.11.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.11.0/llmenv-macos-aarch64"
      sha256 "fda0d9803cc9a10f82baa07dc77acfc6c25a8b715b339660b1a45381d739f31d"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.11.0/llmenv-macos-x86_64"
      sha256 "d014cffae3326ad537b149d025f0b9c3826a91694b1c8b5717fb1f7cc8c5eea8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.11.0/llmenv-linux-aarch64"
      sha256 "f43d876bddddb89cb8423278203967e41be62153c1ec562009c0cc293e185d9c"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.11.0/llmenv-linux-x86_64"
      sha256 "e4b16291a02ff3029b6250758a0e0a1141d4dec181e5f619f10662da1520234d"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
