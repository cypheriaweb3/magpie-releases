class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.591/magpie-cli-darwin-arm64"
      sha256 "fb524d67c84c3b65f4d96480a117438d6a6f98fd5b259b08a61f73ba5210ec40"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.591/magpie-cli-darwin-amd64"
      sha256 "f2b4bf2e8098377054930866ee65b586228a6f89562969fba509baa6ebcfae2d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.591/magpie-cli-linux-arm64"
      sha256 "e2470eac0e78365b7d67f800376d8334976172643f77ddc7304c56efce6ff88e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.591/magpie-cli-linux-amd64"
      sha256 "e95ba55ebf126637954237c7e4db112e560fbcb96011d15aded3e80abd364c75"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
