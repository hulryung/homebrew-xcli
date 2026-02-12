class Xcli < Formula
  desc "X (Twitter) API CLI tool"
  homepage "https://github.com/hulryung/xcli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hulryung/xcli/releases/download/v1.0.0/xcli-x86_64-apple-darwin.tar.gz"
      sha256 "Not"
    else
      url "https://github.com/hulryung/xcli/releases/download/v1.0.0/xcli-aarch64-apple-darwin.tar.gz"
      sha256 "Not"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hulryung/xcli/releases/download/v1.0.0/xcli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "Not"
    else
      url "https://github.com/hulryung/xcli/releases/download/v1.0.0/xcli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "Not"
    end
  end

  def install
    bin.install "xcli"
  end

  test do
    assert_match "xcli", shell_output("#{bin}/xcli --help")
  end
end
