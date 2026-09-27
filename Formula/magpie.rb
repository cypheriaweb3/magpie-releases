class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.219/magpie-cli-darwin-arm64"
      sha256 "3930bbd9f5db6c4469e1f6a2a262d43aca7ab50fcf48a2e8dc24e9a6c615abb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.219/magpie-cli-darwin-amd64"
      sha256 "a338f3e3fc90a2ee842afae8060aac8c5f4165c9d568bd8314420d4e04fe563d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.219/magpie-cli-linux-arm64"
      sha256 "11fd135d73f83cc2c1e8610c68da8be0316bcff715b583b76a9a2ddc1cb3d7b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.219/magpie-cli-linux-amd64"
      sha256 "d208c187d4652dba3b239eba9bfc97e41f4aa54f19c118ac3a2b2e47431f4116"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
