class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.1/llmenv-macos-aarch64"
      sha256 "e34df44de9b68382af341b556c2d2350cf46a0b864244cadace5985ea64d7c59"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.1/llmenv-macos-x86_64"
      sha256 "e9fc2f37c71813bf7abfab7696422f3461169ee292c7b67494b02f3f4477b337"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.1/llmenv-linux-x86_64"
      sha256 "44f1de559350f03317fdf4ccbd290aa532034f7c0ec3525b697aa4ef587488c7"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
