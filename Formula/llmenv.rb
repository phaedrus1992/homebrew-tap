class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.11.2"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.11.2/llmenv-macos-aarch64"
      sha256 "dd8b7ede9cbf8da62312818e24c2b0a0014ae4bc07182a954a31c51d828482e1"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.11.2/llmenv-macos-x86_64"
      sha256 "6b7dde70ed8d6e27a150cc96421ca8ca81bdf3fe60405976dcdf23c48b3af731"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.11.2/llmenv-linux-aarch64"
      sha256 "8361dbf855ceeb22616ce0fca77ad39eba593347dd37e2671ba492d39eb104f1"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.11.2/llmenv-linux-x86_64"
      sha256 "80a9e73959e305b979947365cc19073189af7542b9feba90fab7f4e5b7cfe9fd"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
