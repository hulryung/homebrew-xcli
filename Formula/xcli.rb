class Xcli < Formula
  desc "X (Twitter) API CLI tool"
  homepage "https://github.com/hulryung/xcli"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hulryung/xcli/releases/download/v1.3.0/xcli-x86_64-apple-darwin.tar.gz"
      sha256 "d23bb7611a6708839e93a9ad93bd951b264d03ce33fd219e92848f894df05351"
    else
      url "https://github.com/hulryung/xcli/releases/download/v1.3.0/xcli-aarch64-apple-darwin.tar.gz"
      sha256 "d4071e596c1a0c2770ab05f9764a969249d22601bc1fec87956ab729d4d41af4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hulryung/xcli/releases/download/v1.3.0/xcli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba1783ab3ef0d736fbe11b470e01782bdc27743bcddc0cb0c628b3d84eede3d5"
    else
      url "https://github.com/hulryung/xcli/releases/download/v1.3.0/xcli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cbcbe529b42f276bd95133b96ac9dc03e71b24f88c8d8d0862c10db5fa5129bd"
    end
  end

  def install
    bin.install "xcli"
  end

  test do
    assert_match "xcli", shell_output("#{bin}/xcli --help")
  end
end
