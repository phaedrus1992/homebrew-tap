class Llmenv < Formula
  desc "Dynamic LLM environment manager — scope-based config for AI coding agents"
  homepage "https://phaedrus1992.github.io/llmenv/"
  license "MIT OR Apache-2.0"
  version "3.6.0"

  on_macos do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.6.0/llmenv-macos-aarch64"
      sha256 "566b44957e1abb4d6f9c357d74660aa6a173cf7ad0e977da632b575df0c78cda"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.6.0/llmenv-macos-x86_64"
      sha256 "d043f206d11f69543abaecb2471a3aad3da1b0e7f92f9dcc85da88c41f2ec2a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.6.0/llmenv-linux-aarch64"
      sha256 "56f384ef7d7fef79e386731fb2330012030734c740ec4dbb9638c4d728c18b2d"
    end
    on_intel do
      url "https://github.com/phaedrus1992/llmenv/releases/download/v3.6.0/llmenv-linux-x86_64"
      sha256 "d72fe797db24bddec3c6d82c0b032115331fb19d42bb0438d05ed51a77101312"
    end
  end

  def install
    bin.install Dir["llmenv-*"].first => "llmenv"
  end

  test do
    system bin/"llmenv", "--version"
  end
end
