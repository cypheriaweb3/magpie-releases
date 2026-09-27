class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.167/magpie-cli-darwin-arm64"
      sha256 "235ac11807f98801286969b5a84ebb250f9021f7f16c13aae5699b5f5e68d876"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.167/magpie-cli-darwin-amd64"
      sha256 "da6c778f5a87e0efd5038f04658a2773c865723ef707e219b831a33b8417f1d9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.167/magpie-cli-linux-arm64"
      sha256 "d0fc22de9a988a65a9baa8bb09b6277e67803575310b171cd12e26f7d1fdd352"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.167/magpie-cli-linux-amd64"
      sha256 "13ef5b97cd5d8420bc1d9309f6e2e132ad4edf2ad309a05a7a92610586ae3831"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
