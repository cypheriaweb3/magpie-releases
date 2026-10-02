class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.639/magpie-cli-darwin-arm64"
      sha256 "1a543966240f6fbf81946ac6445018b91a0e9f344dcbb4d6fbe2c8483dc8bac9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.639/magpie-cli-darwin-amd64"
      sha256 "68482295d4905e45f11daedfd1419a2afd772292bd01ea0dcaca535bb0e40a83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.639/magpie-cli-linux-arm64"
      sha256 "824c6e96d9f310c8ba85d443beed3afd9d89c3d8c0b42d8cbfe659bfdc51c597"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.639/magpie-cli-linux-amd64"
      sha256 "f7241ec331e64220e308a979860d03f2a538291b744f7d7a6f60604cb7312d37"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
