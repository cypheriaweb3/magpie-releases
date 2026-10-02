class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.651/magpie-cli-darwin-arm64"
      sha256 "e8893bde0aecf69ba6f994dd1f2e396b16bf0af86bc457d0c8e68ed2542e1693"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.651/magpie-cli-darwin-amd64"
      sha256 "a6a450979b83c301333b6768aa4cd0aa0109b54902acacfc36981e5c709a42d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.651/magpie-cli-linux-arm64"
      sha256 "c5b572bd9fa940b6600aa7ae931694da1ba7035e3aded502d4c0fba877d9672e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.651/magpie-cli-linux-amd64"
      sha256 "335ff628398d5e176715ba9d8026b30e2d7dbdafc2a8126d8b6fc386cb0eadf9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
