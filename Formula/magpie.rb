class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.547/magpie-cli-darwin-arm64"
      sha256 "da3bdacc35b82bdbd0e1b7e5ece04863f8f139541fb8b867dd9894bd7fe72ea0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.547/magpie-cli-darwin-amd64"
      sha256 "e2dc9149e0c8577711d9df42954379dc263312f5826c29f7eb5267f8cecb6d94"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.547/magpie-cli-linux-arm64"
      sha256 "1f29029f02ab8ebbd74ca8e3045f671d8b675c4fb73923060122de08eb667215"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.547/magpie-cli-linux-amd64"
      sha256 "f442c72796a87ddbbe80491fbb72bfe75a2393076ce5f203b528ec61ad5938e7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
