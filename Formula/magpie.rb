class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.709/magpie-cli-darwin-arm64"
      sha256 "c570989163fb8c522313b9d0a8e0380fae4ae98b9ed0174354a32885dda6329f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.709/magpie-cli-darwin-amd64"
      sha256 "a520acd6b37d4831de64529c3193218ab5d77b7a7566e5802d17233df5dc7fef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.709/magpie-cli-linux-arm64"
      sha256 "8780e51b9264a8b4a6ce9071a9e30bea4033cfb3cbdf38e39d98189d454f0549"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.709/magpie-cli-linux-amd64"
      sha256 "a73ede0323407c5f7273e8d1366e0a8c2e9e806cbd92d5a607652bfcafae2338"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
