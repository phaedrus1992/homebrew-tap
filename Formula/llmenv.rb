class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "1.0.6"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.6/llmenv-macos-aarch64"
      sha256 "c52dbf8ac394eaadf6847f4d2970f3b7487dc1f49c58c425d6d83e2128a90179"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.6/llmenv-macos-x86_64"
      sha256 "27bf5f8978f5c1e39543c1f024e37fac778b3daf34dd57c12bf1511f81e99964"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.6/llmenv-linux-x86_64"
      sha256 "6deeca22ef104ad2f9c52278e84c4367dd9d80dfe555f0a17baedb3bd1f6cd55"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
