class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.3.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.3.0/llmenv-macos-aarch64"
      sha256 "d8918e26dfca11eaedc409a596c0d2c68bd6281608d11372da05332e6469987f"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.3.0/llmenv-macos-x86_64"
      sha256 "435fdeb8cfd027d6b22fe5f7330f48f860a9ca40ae2a4e6b2c22d4ab6c0a37a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.3.0/llmenv-linux-aarch64"
      sha256 "d4bbe02bf38d05e9b0bbf9a361b063c77d834028d365c44ef7ec17901f8ccc98"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.3.0/llmenv-linux-x86_64"
      sha256 "ae3036f490997401b5e9dc1a7d4d6e7717b6cb1777ea66e9d3ec095f232ea534"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
