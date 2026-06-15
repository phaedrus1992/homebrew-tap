class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "1.0.12"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.12/llmenv-macos-aarch64"
      sha256 "a2fba74524c54cc313d8940cce673f65498c175ca2e2309da748a042abf7abd0"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.12/llmenv-macos-x86_64"
      sha256 "8c47811c0a84426aa13778a827fd044c56319030417c4192c9fb7cf4f2ef8f7b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.12/llmenv-linux-x86_64"
      sha256 "2fd17d6a9f833c90db82effa2b4f4688b8c2834bdb8039819e1ab392500663b2"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
