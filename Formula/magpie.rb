class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.703/magpie-cli-darwin-arm64"
      sha256 "de816a54d4bf63f1afc7ea61c59ec3a94d8a22d31eb2e9e2a11eaddf94780ca3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.703/magpie-cli-darwin-amd64"
      sha256 "75a5220b69f31818d93c79e41e9d7cbde405f0ca9ec9188e9ad7261520ff7e85"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.703/magpie-cli-linux-arm64"
      sha256 "fc2d81e5d61436ea9fe751a38725c8c6684340f35950d3fb874517c72d25e7a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.703/magpie-cli-linux-amd64"
      sha256 "3ef527906f14a28e8263644c821fceb3dce9784db1bc99df18a2a0af6ba04b63"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
