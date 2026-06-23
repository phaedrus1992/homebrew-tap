class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "2.2.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.2.0/llmenv-macos-aarch64"
      sha256 "5faee6cda0a513d3849d0242782af2e62c151a33cd0f4aee4c270fdff37616e3"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.2.0/llmenv-macos-x86_64"
      sha256 "f72d33903bc016cb4d250a04ff8b42018457f16ddbebfeaa925c35097212177e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.2.0/llmenv-linux-aarch64"
      sha256 "af722184b2dd5e203dc3a75bb9f3d5dd192cfe8fdae4429322cfa9aaf4b560e5"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v2.2.0/llmenv-linux-x86_64"
      sha256 "37e98f690d7c4a303b575a1f5447b429d5c1e7455c0ddde2eae3e5866e48c8c0"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
