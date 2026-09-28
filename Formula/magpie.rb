class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.302/magpie-cli-darwin-arm64"
      sha256 "b91f452fed6308a3917c623f9940f86c1c1764a3630489cd7c59cf7e491013ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.302/magpie-cli-darwin-amd64"
      sha256 "99e8484a548c29fc2cdc41ddf2df2816e9bca2731496d5380a70f16af329d19b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.302/magpie-cli-linux-arm64"
      sha256 "3445195b67b8fd0e20e999d2b5e22f680307b269e5d7a8d05dbe49f9554ccb75"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.302/magpie-cli-linux-amd64"
      sha256 "44191b522cf31132c34c9b863da5cf5fb10bd4921c380d627b725f747be833e4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
