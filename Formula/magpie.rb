class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.756/magpie-cli-darwin-arm64"
      sha256 "b27ed146668a1b035de4e046793338ccd1b1f407f89d69110598f0f1f9d3332f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.756/magpie-cli-darwin-amd64"
      sha256 "8611f0a301e2a5d05b3304a6f7bbb481ddddba583a5eadfe574825d2bf29918b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.756/magpie-cli-linux-arm64"
      sha256 "d04501748716c5f295ada553f8a27451f13e9d7b74f8cb1572cdf7e8c56e523d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.756/magpie-cli-linux-amd64"
      sha256 "96a2d8e7494fecbf62718260a0cf72b29da5b989f7b6d5c91ea6f3fea13a2dcf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
