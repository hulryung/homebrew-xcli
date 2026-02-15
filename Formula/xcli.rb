class Xcli < Formula
  desc "X (Twitter) API CLI tool"
  homepage "https://github.com/hulryung/xcli"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hulryung/xcli/releases/download/v1.2.0/xcli-x86_64-apple-darwin.tar.gz"
      sha256 "aa9d247ceef8f13c2bafcb3bcd5dd86c9bf26103690059fd748957d1510562c8"
    else
      url "https://github.com/hulryung/xcli/releases/download/v1.2.0/xcli-aarch64-apple-darwin.tar.gz"
      sha256 "67ede3470b081a9edbb11d18dcc6f7900e21545712787e467cc67b4d717c644d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hulryung/xcli/releases/download/v1.2.0/xcli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "373a51e8f4b64b65a9209458b603e7c4c909f9486bee47524003dd0e843066fa"
    else
      url "https://github.com/hulryung/xcli/releases/download/v1.2.0/xcli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6d23c366394719ae5fb2fb6519f5bfdbf8ec7918cf716b94bd9af8a9f93d0ff3"
    end
  end

  def install
    bin.install "xcli"
  end

  test do
    assert_match "xcli", shell_output("#{bin}/xcli --help")
  end
end
