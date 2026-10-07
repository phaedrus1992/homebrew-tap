class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.12.1"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.12.1/llmenv-macos-aarch64"
      sha256 "5f581e2869a1082387b72db8c95a80ac359fbd259f706b9bda955bbd89e91d51"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.12.1/llmenv-macos-x86_64"
      sha256 "199dfc257b01070e88d0493f1aec2cf1f0d8656212dd0e81fe02a62b2776604a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.12.1/llmenv-linux-aarch64"
      sha256 "261607953321e1227c96be2b09987968934beb46efa958e50bec7c8119dee8f5"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.12.1/llmenv-linux-x86_64"
      sha256 "bb77eea0cf958c07fc9d5ce3d7912bdcb41caaa50e23314bb8279af9f2f8c3d9"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
