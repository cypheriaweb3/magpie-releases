class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.625/magpie-cli-darwin-arm64"
      sha256 "767a9f0348852fc534b2d32e2bbaea15e82c5de9cda38890e4e66378b8d9daf7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.625/magpie-cli-darwin-amd64"
      sha256 "0b76998b67b5fba96d33b91dba512d0c5c908574d808add2661ffad27c697f63"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.625/magpie-cli-linux-arm64"
      sha256 "67bee8fd99709100a6f5225407a7a4954c9c753f04320d49dc0e6a7b2a61b777"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.625/magpie-cli-linux-amd64"
      sha256 "9320fd71da55cf1f72f6f9dcf658d8e20f1bd57eed349b2a747e1e128bd150ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
