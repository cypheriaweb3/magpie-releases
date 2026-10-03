class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.693/magpie-cli-darwin-arm64"
      sha256 "938881a49c1b2028425f55b30aac101954934f4de84e6df82d44e7b25b4ca4d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.693/magpie-cli-darwin-amd64"
      sha256 "c5c87824c340bf0bc2f526a17a2d6b2ce5e01730bf176f753125f5b02bd3e84e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.693/magpie-cli-linux-arm64"
      sha256 "82ee9f364983d804ab65d060229bccb590a7e7d70c618953d585cfa6b8439d4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.693/magpie-cli-linux-amd64"
      sha256 "0c2dab84216a2dd794829ecb431ded209b689281d4ebb041c92688d7e746db00"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
