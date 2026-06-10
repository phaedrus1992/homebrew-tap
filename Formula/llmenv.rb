class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "1.0.9"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.9/llmenv-macos-aarch64"
      sha256 "f5fde4f6a4e0e35b8046fbe486c9dd2984b5f674e6c545de6f7edffe99b796a0"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.9/llmenv-macos-x86_64"
      sha256 "c2debc4508dfaa0dbb06dc7acf8d93f18d073c0231ac8df73a66d82e055daac5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.9/llmenv-linux-x86_64"
      sha256 "116d0907631b84c3db1256b28670b589ad7794ef47e3b506f4aff1148aa617c4"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
