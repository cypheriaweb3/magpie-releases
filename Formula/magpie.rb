class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.560/magpie-cli-darwin-arm64"
      sha256 "2533df6c1d451bfa5927a694dbd0ab2bc9fc34395bc44c0ed9e474137640bac7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.560/magpie-cli-darwin-amd64"
      sha256 "da8010ee47f54b248e4839ae55b638c5fbd7e5763b7da6f5141f5aa334ba2f2b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.560/magpie-cli-linux-arm64"
      sha256 "8a4d8b406cc360e888a08352261078e0826caacc5f02b26605ce81c7f241824a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.560/magpie-cli-linux-amd64"
      sha256 "8869d1558702e9641c2e4513a675e8521f933ce43353c69431c1e8b89c9a4e56"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
