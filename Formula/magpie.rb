class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.232/magpie-cli-darwin-arm64"
      sha256 "07959dbf6ac7dcbb971397f8ba9749165ada75def047daf1a19b28f324f94a27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.232/magpie-cli-darwin-amd64"
      sha256 "e398e6b06aef142d48c530264750845534067726406d1bf6e633834a9e58afc0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.232/magpie-cli-linux-arm64"
      sha256 "a4d50e029e67cc892e4157259823984eba01bf8f9944e31e142ba1a98e6b5a55"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.232/magpie-cli-linux-amd64"
      sha256 "494931313a70613cbedd42fd03d3dd838e7c0c047693522d140f10ad43bd5279"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
