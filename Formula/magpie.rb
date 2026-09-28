class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.298/magpie-cli-darwin-arm64"
      sha256 "c8cbbc01bdcb5f7aeebdfac72e6b8da2e8b69c3c5d7035d0c8e684bfccb0d31c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.298/magpie-cli-darwin-amd64"
      sha256 "38da27d66802b01a006ba785f36ebac1f445a55863983913654a0bbabc0e05c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.298/magpie-cli-linux-arm64"
      sha256 "3ffeaeb3f214844d30bee22b32036512bbcbd8b687d1b8814e2ea2d09f89f2e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.298/magpie-cli-linux-amd64"
      sha256 "4e10a6e5596bc93bc37b628e603a34075fd419353beaa416b0546b6ae0cc4c40"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
