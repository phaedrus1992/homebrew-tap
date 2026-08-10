class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.9.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.9.0/llmenv-macos-aarch64"
      sha256 "0682768bbe7c79be2894a9c08d5bd2ba9ee5d17848160db74649155d31526767"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.9.0/llmenv-macos-x86_64"
      sha256 "8c018474d66db15acc06e4ba8f8a967b7997ccef3726d0f6b1f6810f048400dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.9.0/llmenv-linux-aarch64"
      sha256 "3ac3e05c12b82ef236f23c509b8699256ca6475f221be8ad6adac4ba3ca32302"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.9.0/llmenv-linux-x86_64"
      sha256 "6d8b076555ce2e7e0db2185bd68a924d1539bbc65946665943ab086aa9367e32"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
