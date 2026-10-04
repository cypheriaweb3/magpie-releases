class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.866/magpie-cli-darwin-arm64"
      sha256 "90107462a83b3bdc62d213beb742fa82b96ba253730e2165c19f39cf44cfe9cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.866/magpie-cli-darwin-amd64"
      sha256 "79e6c8594576b295256c36c7d003990464fb29c90eb5d5318de8eb471dd65676"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.866/magpie-cli-linux-arm64"
      sha256 "0d79ea123e2881797dcc8fa1cec31a47105e3a6b4d4ab6044c7226eb6a24ba96"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.866/magpie-cli-linux-amd64"
      sha256 "ccbc32d8e7a42cc9d6e4598a50982830b459bf043e061a471adf443e0c0860cf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
