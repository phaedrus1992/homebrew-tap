class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "1.0.5"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.5/llmenv-macos-aarch64"
      sha256 "cabbd4c9dd4cb06b5092f6b5b3da2e8b0e5a2ff312b4420b73fee390f9790738"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.5/llmenv-macos-x86_64"
      sha256 "a160e41c472baaa236e4f9f72125330d1f661bad779b69f306db00a640b0aa75"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.5/llmenv-linux-x86_64"
      sha256 "016b4a86f94c716cc765144c9371194aa44dc48da47937ecefb46b9db8662eab"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
