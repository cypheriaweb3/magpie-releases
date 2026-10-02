class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.667/magpie-cli-darwin-arm64"
      sha256 "8ae8797a89ede6f16abd9372a4cdae3ec0393fc8816725d2ecd0fde2eb01d7ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.667/magpie-cli-darwin-amd64"
      sha256 "7909c7024a605c24f755420d24397f9ad91bba2e6da54a84e74ec8aa4152a983"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.667/magpie-cli-linux-arm64"
      sha256 "ffb46e4d948199a738f735199652f960d7c34a47acd0f90a479d7b9ad94406ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.667/magpie-cli-linux-amd64"
      sha256 "d66a179a351dcc84da1b812459a0182d0ab68456b09ebfd4ae34201fa3ee25b0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
