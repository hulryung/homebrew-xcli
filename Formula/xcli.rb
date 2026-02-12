class Xcli < Formula
  desc "X (Twitter) API CLI tool"
  homepage "https://github.com/hulryung/xcli"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hulryung/xcli/releases/download/v1.1.0/xcli-x86_64-apple-darwin.tar.gz"
      sha256 "7264bc8a767558f5c633a06387542b82d8e9c1c7a40bd5a5f3a34a718bc6f6e5"
    else
      url "https://github.com/hulryung/xcli/releases/download/v1.1.0/xcli-aarch64-apple-darwin.tar.gz"
      sha256 "0a2f4b24b0094557b34a03564d9b8bc08ba3078192cd0baf201864697ef6a3ba"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hulryung/xcli/releases/download/v1.1.0/xcli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "314c4be8a8203bf5d84e4937e65ff7f2e0752ad6e14344722a261fdca3279ac6"
    else
      url "https://github.com/hulryung/xcli/releases/download/v1.1.0/xcli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee393504ade7f525f554075b6e85f30ad2905da56e92e8ea55efcb89605405d1"
    end
  end

  def install
    bin.install "xcli"
  end

  test do
    assert_match "xcli", shell_output("#{bin}/xcli --help")
  end
end
