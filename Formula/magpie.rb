class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.444/magpie-cli-darwin-arm64"
      sha256 "3be148a536656da0176c880ebdddbf6dd328d6cf67ad39eae394de0b80b60aa4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.444/magpie-cli-darwin-amd64"
      sha256 "37999896e4474cafada62f9cdea8feb72f02ae850539471e39bde1d24b835b02"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.444/magpie-cli-linux-arm64"
      sha256 "e98708a384f0f8fd3ae2f89ea38c9449f06f7981540c0daa89de6841ea8f0177"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.444/magpie-cli-linux-amd64"
      sha256 "70d142e0c1531f3c992e97d287660bcf2ef2a6b914f29e86ed49fe423671f749"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
