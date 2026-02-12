class Xcli < Formula
  desc "X (Twitter) API CLI tool"
  homepage "https://github.com/hulryung/xcli"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hulryung/xcli/releases/download/v1.1.1/xcli-x86_64-apple-darwin.tar.gz"
      sha256 "c91bf99c07c8f8e0cd0806f4e7e6d1685d77c0bde50beaf3bd5855da520826fe"
    else
      url "https://github.com/hulryung/xcli/releases/download/v1.1.1/xcli-aarch64-apple-darwin.tar.gz"
      sha256 "060072807dd5286f7d37948a4463e3051e1e7b2243446a9626a496a0a49390b3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hulryung/xcli/releases/download/v1.1.1/xcli-x86_64-unknown-linux-musl.tar.gz"
      sha256 "26262ffd0efc75dd4e7ba663388e79eb90be2845dfae01ab2a451789d80af890"
    else
      url "https://github.com/hulryung/xcli/releases/download/v1.1.1/xcli-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5f74ebdfe374bec07bd8b37003cc5524228e1986941bd0df9e620191a38fd597"
    end
  end

  def install
    bin.install "xcli"
  end

  test do
    assert_match "xcli", shell_output("#{bin}/xcli --help")
  end
end
