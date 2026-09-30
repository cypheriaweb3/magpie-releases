class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.499/magpie-cli-darwin-arm64"
      sha256 "4da08a215cf49378e5a239fbc7c3a73877ae92447f8f5baee71b4e4c90e1d63e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.499/magpie-cli-darwin-amd64"
      sha256 "30cf052aef4b9847744e6e5384acc254d9f428a9548d82c7777e5fcfb1f99bd0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.499/magpie-cli-linux-arm64"
      sha256 "db955f6e73eff1272aba9b406d7fb82bf33f8461e2ff706bdd0cf1d8fe10b842"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.499/magpie-cli-linux-amd64"
      sha256 "85bc15735f1143eddfb77545b58adc02b557e19cc7afd63c6f69ab49d071645d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
