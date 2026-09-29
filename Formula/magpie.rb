class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.409/magpie-cli-darwin-arm64"
      sha256 "c5b8eb173463561338093bb187fe4107386cf9274ee9de747cc00015e53c255b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.409/magpie-cli-darwin-amd64"
      sha256 "a91e9778607eb5948f1c7096a51d9ee33b6fb013a95a439b860ad523f6a488fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.409/magpie-cli-linux-arm64"
      sha256 "dad7c6b8484c5f41e0655a857cd77c1be09126610626b0cdf2d7ba2bd0190a50"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.409/magpie-cli-linux-amd64"
      sha256 "bf0582747d8aa3253594a0b8151905d9fcc286dba8e64be148d8afafb2761ea4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
