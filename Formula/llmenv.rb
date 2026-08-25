class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.11.1"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.11.1/llmenv-macos-aarch64"
      sha256 "3aae905306d985d6c752cca232d338e4235ee0192bed22025040255e41ad7d28"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.11.1/llmenv-macos-x86_64"
      sha256 "dd913be795d4b14e7a5681b46aeb64244c6ffa54079d50ab81f0e26bada42786"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.11.1/llmenv-linux-aarch64"
      sha256 "bd4fda5bd5a1449aab26513fe0f3b5171bcd61f096ad406b212894175fb06dd3"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.11.1/llmenv-linux-x86_64"
      sha256 "541518b50134a4689b88b4c88e6ffef15b1077023f3fd1de0958cd168d3dbaa7"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
