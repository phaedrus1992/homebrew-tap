class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "2.2.1"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.2.1/llmenv-macos-aarch64"
      sha256 "d2ccd1a04a930317a4cfbb46bcb49a883dc01014e5f8feaf51fb3b772dd89f7a"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.2.1/llmenv-macos-x86_64"
      sha256 "209cbec0265815ab6a0c620191e3894654294ed83221dfc8a629e0639798100b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.2.1/llmenv-linux-aarch64"
      sha256 "3f007c743a698039e3b485c1f0defb7e33adedd5c16f5acc4448c8a552e526e0"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.2.1/llmenv-linux-x86_64"
      sha256 "df71b206cd80bea135b3aa5e15267bd68f6b3bc6d0de2dc0e21c1cee91def4ab"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
