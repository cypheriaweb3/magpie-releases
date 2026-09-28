class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.251/magpie-cli-darwin-arm64"
      sha256 "d334960e77ae5d9c2dba92a13caf7740b86aad474903bf43ded6e8ce67d519e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.251/magpie-cli-darwin-amd64"
      sha256 "2d245607deedc0966ee6e1186dd8004863244443a72d26c9366bc60ceafc0290"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.251/magpie-cli-linux-arm64"
      sha256 "41650dfa49be8bd4d6db69e093bbf72d3d231ff3249118b15b742ef953634066"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.251/magpie-cli-linux-amd64"
      sha256 "6c7691cc5165c47e8cdefd1f2b6129c64fab0bee78f6d920f82f21347e688565"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
