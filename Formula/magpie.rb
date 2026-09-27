class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.183/magpie-cli-darwin-arm64"
      sha256 "1c808e138684296d4bf80234ca5253540fabe5aa246ebde19a3b74d35b796683"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.183/magpie-cli-darwin-amd64"
      sha256 "8cc32054f1c8ae8a5761d2e224753f9b71ffca6cf96ae9fffac8e9f1008f33ed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.183/magpie-cli-linux-arm64"
      sha256 "f68abf08e208ff0771e2c9b29f1835b6441f1259febf1237180ee734bc93bc5c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.183/magpie-cli-linux-amd64"
      sha256 "3de7e53a6cc547ee620e68f9173c60f4a852417bb021b076a53aaf8599a6f586"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
