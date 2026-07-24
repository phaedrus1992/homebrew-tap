class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.6.1"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.6.1/llmenv-macos-aarch64"
      sha256 "e20e1983c648798ea7f8bf5c66a1949e3ea4a623b9b1bd6aa13a452bea4f56d0"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.6.1/llmenv-macos-x86_64"
      sha256 "a7f2f4d262e1e9a22e5e5edbd9b59f1df986a7f1cc90b3539f3e64932343387d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.6.1/llmenv-linux-aarch64"
      sha256 "0d9f7a3998ac03a24b9de2cb81d1a11f89f6881ba63d807196a017937c97f56a"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.6.1/llmenv-linux-x86_64"
      sha256 "b4849db7394ceeaa37fe89a079e9c9fd4e9902a979c130e011820052c64f22db"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
