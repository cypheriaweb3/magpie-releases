class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.682/magpie-cli-darwin-arm64"
      sha256 "52c7e8a26280503148a16910d47481e75afecab0c8a390504d7fbf6739d7a04f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.682/magpie-cli-darwin-amd64"
      sha256 "eb0e4812e7e0a846f53e6d28296f14c8b71155ee8ead3335da74d83c5eaa717e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.682/magpie-cli-linux-arm64"
      sha256 "cd3b892529bb34a5eddac19ef6a2f78e2ce6823ffb9062b20181e82efb81565f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.682/magpie-cli-linux-amd64"
      sha256 "0fb70a7155c01f7224bf4bf17ec29451108155cf223551d9919f5d2af50d0e16"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
