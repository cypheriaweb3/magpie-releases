class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.182/magpie-cli-darwin-arm64"
      sha256 "8c70179c09e41e0b46d748bf46526d4c2cbf6a08340190763b8c2fcbeb6d842d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.182/magpie-cli-darwin-amd64"
      sha256 "3477a2274fcb8194e0f1dcae6d93a4aa3ad5fafe13b8762230d892348b2ff4f7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.182/magpie-cli-linux-arm64"
      sha256 "c0fd30c9a218b94ccabb5b2a096dd5b0f687f19c0236380b57e3fc214c3db40f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.182/magpie-cli-linux-amd64"
      sha256 "6c8c7e15ed65296c73386ca87e85e08d8a6ab380bc4fc8cf51d23ac24fd00ef0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
