class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.427/magpie-cli-darwin-arm64"
      sha256 "1ed2e37252c70feba28c4acd52115add16c50ae48575944bfb67f2ba70c61cdb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.427/magpie-cli-darwin-amd64"
      sha256 "0c11670e717e484cb612dc421b17d67b5b55c3bc4f041d206a4600204262ea24"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.427/magpie-cli-linux-arm64"
      sha256 "333bf9cb9efff4214d2c0c3ac6ec887ae622a172b4b3c6470960ad76204e0053"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.427/magpie-cli-linux-amd64"
      sha256 "fc4c3d8a0f823bb49289abbfd75efaf26fb0276963de2405c9c232b6143c7533"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
