class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.284/magpie-cli-darwin-arm64"
      sha256 "7dad4bf0dd2570286312df65ceb734c21d62822dbfc5edb2f2155f2ca1d47d21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.284/magpie-cli-darwin-amd64"
      sha256 "0673c08056f5141b4292a55b6b5a395362b14f14e8eedd9b6da634387089a844"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.284/magpie-cli-linux-arm64"
      sha256 "ff27cc984add60441e5e1c0e48b9f3257e0be3117e184b3e41acedf4ff08b572"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.284/magpie-cli-linux-amd64"
      sha256 "4e65bafd8975d59653e8e52aa448d8e1a25e9b1a3d780c40ca21f196170904ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
