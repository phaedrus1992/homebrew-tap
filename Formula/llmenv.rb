class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "1.0.8"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.8/llmenv-macos-aarch64"
      sha256 "b40082abb77a280ff3eb3bc48fb9ee1cac9951e57a7d3aca957d85faef5195b2"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.8/llmenv-macos-x86_64"
      sha256 "90f6f6b0f331f834d89dccc275aca3c795111244687a4025d69cb0a477cf145f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v1.0.8/llmenv-linux-x86_64"
      sha256 "dd2d35ee958d226eae0988bb3fd6091761e53ce826475f352105981e12729213"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
