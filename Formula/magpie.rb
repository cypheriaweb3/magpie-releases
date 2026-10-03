class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.753/magpie-cli-darwin-arm64"
      sha256 "5613d0539b88a77f15e7280453407311a7b4811a8a9f27c3154668f75e9e4ef8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.753/magpie-cli-darwin-amd64"
      sha256 "4dfc1c405c5502c485f5ffacc95d2533684aa3cc3ef925ac0affdde303b5047c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.753/magpie-cli-linux-arm64"
      sha256 "2798c419513b83303253b3ff4b0d5b35839358839548fa4fa3a6548735b2456c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.753/magpie-cli-linux-amd64"
      sha256 "fdd58bc7b3cbbb2cf9659d05be6c9210384a0e4028b7e064a0b441f59019a6d7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
