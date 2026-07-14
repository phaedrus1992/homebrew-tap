class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.4.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.4.0/llmenv-macos-aarch64"
      sha256 "2adb71911f3f4d59e46c90f9c5ec8fd56735a34b732186085f78db4f75abffc7"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.4.0/llmenv-macos-x86_64"
      sha256 "3d83563c503ca32101ee26f5778da9fbb1a02062c38d8f13c5046af9d80f5b32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.4.0/llmenv-linux-aarch64"
      sha256 "c65bab52c91d52827235f2aba8303bb349bca7c155b885db15c0e40de5f81e0f"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.4.0/llmenv-linux-x86_64"
      sha256 "b7ac46c155f2f94bceef6abeb244fa5e2a9866ef5c9fcec252264e79ff9a50ea"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
