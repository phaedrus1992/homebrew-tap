class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.5.1"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.5.1/llmenv-macos-aarch64"
      sha256 "3a9c632403fac2069dc4009ec0a070b1611792be9f9f47f80cbbf00907af8242"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.5.1/llmenv-macos-x86_64"
      sha256 "fbe183b7269aec4877b8b634599aa9d6ab55fbf57efcfa85666ae1c0c9596ed3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.5.1/llmenv-linux-aarch64"
      sha256 "3c2cb2facc7a9a76da1e58eae5c39ac24453f9fb5ce34cd87bc3a2513dfb44f7"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.5.1/llmenv-linux-x86_64"
      sha256 "c0e1e9bf2bde528ca3c38b13f842da7b1c7e529a4208c09702847aa104fba51a"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
