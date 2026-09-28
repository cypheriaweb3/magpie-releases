class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.244/magpie-cli-darwin-arm64"
      sha256 "728b83c2053919271a172517270560c2ae877b5da1599212f471b92504346e2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.244/magpie-cli-darwin-amd64"
      sha256 "176ff8d32e4509e3dc913f71f8d2f12feafe7c74b1b93fb82f88bd810695834d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.244/magpie-cli-linux-arm64"
      sha256 "46cf45218fa4374d305d6fbf6a7589ed62f8acbc677cd22299099ee1c78aa542"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.244/magpie-cli-linux-amd64"
      sha256 "98d32aa59a0e9da04d7c933a16063d2290f287b0ab6db2bf69a5c40b9fe8d05c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
