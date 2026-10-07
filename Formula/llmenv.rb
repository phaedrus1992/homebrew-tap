class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.12.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.12.0/llmenv-macos-aarch64"
      sha256 "decf59d8e2eb63a4013faf913a9e8d632098221f06683c656334d359df9d08f9"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.12.0/llmenv-macos-x86_64"
      sha256 "2cd040116bdf895551737068f58df54e6b0fec4606733be8c577fca1a44fdd4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.12.0/llmenv-linux-aarch64"
      sha256 "107c208d294ffb1803781f7cbbebdf3cf6a50b472ab90fd1e7dbeec033e832ea"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.12.0/llmenv-linux-x86_64"
      sha256 "991e0d9d64beaba50a501bf2a83aa52d76ea0b7df851a7fbdc5c7a7001bc78ad"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
