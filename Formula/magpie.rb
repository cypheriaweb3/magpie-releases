class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.884/magpie-cli-darwin-arm64"
      sha256 "0729218eab8bae6dcfcc342b157013b0b765edf68ab46d9c8a84693cb497b6a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.884/magpie-cli-darwin-amd64"
      sha256 "9095fce2e5f070f9492a4c58c2858dd6209a19b9bb4d1d3e77b72e99c80f297e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.884/magpie-cli-linux-arm64"
      sha256 "10a0f8107add0fa2bf3c4fc06bed96c372fbd6893181e64d7afbcadae0fceed7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.884/magpie-cli-linux-amd64"
      sha256 "58bd35a85d981d744140645d9f5ef65a41e6d50e36614ea3cd05501d2e93961f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
