class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.193/magpie-cli-darwin-arm64"
      sha256 "dd61d5dca52ad23d847482454093e3983d4a2c6523dd2d9ba69426d97d5c0c84"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.193/magpie-cli-darwin-amd64"
      sha256 "6f736e61421c2d0a74de443ff0d280a5aa0cd0920653dc225f93cfd2f26b84c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.193/magpie-cli-linux-arm64"
      sha256 "0462a74fda9cba51f61a6974e585f67b1dfa6775ccc1f73b2bc6d2b397107521"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.193/magpie-cli-linux-amd64"
      sha256 "4eebb84e071ef9bacd6636192f66b6fea0edb9e948311c93b3b8a2f9a2d5643c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
