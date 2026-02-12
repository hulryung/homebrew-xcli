class Xcli < Formula
  desc "X (Twitter) API CLI tool"
  homepage "https://github.com/hulryung/xcli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hulryung/xcli/releases/download/v1.0.0/xcli-x86_64-apple-darwin.tar.gz"
      sha256 "32312e72e121651532428b55a1018327267c6b365cdb7b96e28a1b0ce1b02f6c"
    else
      url "https://github.com/hulryung/xcli/releases/download/v1.0.0/xcli-aarch64-apple-darwin.tar.gz"
      sha256 "90113977a04478064c30460035e57373f0ccf4dd2dd0f16c976e79bfcfd9530c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hulryung/xcli/releases/download/v1.0.0/xcli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55916fcd6d19e94b46fdc9aa9c51de152538d43052ae967a4d0b494d4c559ad9"
    else
      url "https://github.com/hulryung/xcli/releases/download/v1.0.0/xcli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "363639eddbbe6254f295ac9ad24b8fefa6c0a820ba788b11cc69f3d0f9daa78e"
    end
  end

  def install
    bin.install "xcli"
  end

  test do
    assert_match "xcli", shell_output("#{bin}/xcli --help")
  end
end
