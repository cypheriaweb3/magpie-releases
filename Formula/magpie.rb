class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.180/magpie-cli-darwin-arm64"
      sha256 "597ca96cd5f3058a54d5d1281b1506f8e09a6a41e1234140946800e971ce1f9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.180/magpie-cli-darwin-amd64"
      sha256 "4954c2fefd9b1807b712c46b6c30d493f7bbc61e3efdb5166487dc6e95ae9756"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.180/magpie-cli-linux-arm64"
      sha256 "a4f30d9a4fa07271c7abec070d3299d0ccd7ed42f0d0ce048f9781427f29d2f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.180/magpie-cli-linux-amd64"
      sha256 "a6924d1eb6a45a01028d988e39139f7fe0255946f9a6634aac6c58199aba531e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
