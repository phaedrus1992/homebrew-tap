class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "1.0.3"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.3/llmenv-macos-aarch64"
      sha256 "00bbf1858fdb0bab40501fdb8d8c7b561b573d012c099150261251afa555c703"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.3/llmenv-macos-x86_64"
      sha256 "83152d862fb207956ff1af5273cc66925bfd44b88863ef2ec7b88bc2b7d142a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.3/llmenv-linux-x86_64"
      sha256 "875b148ea86d23d690c300f7238cec868cf03a2d9099bb82b5e26e3550bb35ba"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
