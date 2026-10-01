class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.596/magpie-cli-darwin-arm64"
      sha256 "823a7921d99683a7f53a21057addbd6450b78c5977bbd8ff97587e397c2833b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.596/magpie-cli-darwin-amd64"
      sha256 "438de2ab66798b0cfbfdeffdcd21601b52a52efb1cc4b378082c232b2a9cdfb3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.596/magpie-cli-linux-arm64"
      sha256 "e09be862f1f1fcad18ebe8d9efd2f30ff5556f5a1e32cebfb0ee8c17e2a2d124"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.596/magpie-cli-linux-amd64"
      sha256 "6582fd70c7ffbdb80c5f35b4b1f4591737e6737422b127aab094ee8b1d748779"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
