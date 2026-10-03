class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.758/magpie-cli-darwin-arm64"
      sha256 "99dced55216f8873ea1aef4a0af1a2ef68100b75299dddbef8698f44ae38499a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.758/magpie-cli-darwin-amd64"
      sha256 "46cc8ca2cc13761d6ac9cde94f8fd8e758dbd3c955713d6d59f1be38bcbc479e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.758/magpie-cli-linux-arm64"
      sha256 "21706bc4c4a2a8ed52e4c7afaab13db6da87ec7dc4d4b0282df1f337535fa854"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.758/magpie-cli-linux-amd64"
      sha256 "6b242ac4c4835b8a8190a2ea5ba30a9119a61519dd773283e10feb2e0a72f833"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
