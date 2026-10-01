class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.594/magpie-cli-darwin-arm64"
      sha256 "9556e31609dd779a96ee95c3ab86f4ee66588c3d5e87f038c4ade079de73209d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.594/magpie-cli-darwin-amd64"
      sha256 "843037fa7633915c754916261c74e3d3ddf5f3505f22aa40264560e4da09bcd5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.594/magpie-cli-linux-arm64"
      sha256 "7e91cfdbc94f5694cd4258ddfda0781f689326c5164076b7f7c10bef2e26a0dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.594/magpie-cli-linux-amd64"
      sha256 "d40a4d963617c30411e7a56c4e25a91c046132699f77bf2b26fcecfbc8b685af"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
