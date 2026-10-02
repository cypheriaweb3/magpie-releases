class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.618/magpie-cli-darwin-arm64"
      sha256 "f78a89a5d46af8472962fcf149dedf5e88808ba24be009123465cbbabecfe357"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.618/magpie-cli-darwin-amd64"
      sha256 "8eef8594b5b926ca6ac9cef6af507d5d639e19de2bab19f55968384d9449af1e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.618/magpie-cli-linux-arm64"
      sha256 "6bbda7286755758ba33c2b5f85aab180224f688d51e4f91780f51a3eee5d8e5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.618/magpie-cli-linux-amd64"
      sha256 "5923186b82af2a24924f87fbaba5813b216c2c162beb50948323b2b793067100"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
