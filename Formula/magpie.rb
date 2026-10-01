class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.582/magpie-cli-darwin-arm64"
      sha256 "df25a8cde7e6efed7aaed07bf4826cde554544425c4abecd93213ec127524170"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.582/magpie-cli-darwin-amd64"
      sha256 "28941748c3dee88052eb09591b0d9e5d08c07a4283f393dd75e0b964e0486c0f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.582/magpie-cli-linux-arm64"
      sha256 "f118da1ad4293d7268ce592dac04e168a7958066dfc2a33981178121b0ac1dd1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.582/magpie-cli-linux-amd64"
      sha256 "66d4e464a1ac0a4789c70fc346c85f690e44d2811c0d4a543dd3750380dd63c2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
