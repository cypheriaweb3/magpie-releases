class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.419/magpie-cli-darwin-arm64"
      sha256 "c98b2cfac85c48c146f05c869efbe197f59d5ce1a2c2465fdfae5b8b93c96624"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.419/magpie-cli-darwin-amd64"
      sha256 "f110b848ca6b98372df43306d39dae9dc2e75ae5f1b7e251207f0dd8c3ef2710"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.419/magpie-cli-linux-arm64"
      sha256 "939ea728fbad047ed32d79e90a2bc7874bf5b1d346300cd6ae9ce39a6e7153a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.419/magpie-cli-linux-amd64"
      sha256 "82d44a3fc65b2b44e3d2aedbf81cd3ae47ff1ee2a7bfe15afb46b8f285fb2135"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
