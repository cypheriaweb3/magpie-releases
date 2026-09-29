class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.425/magpie-cli-darwin-arm64"
      sha256 "644c900d4394b70179dffdedd35fa7dece7581631c3cf881387b7374c04f47eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.425/magpie-cli-darwin-amd64"
      sha256 "c2a9b0ee2ab77b73f276a01b636560e859f0b815b02e0fcedbeefcae3829028c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.425/magpie-cli-linux-arm64"
      sha256 "3a8edc3180d8246aefd20f147f393aaf2cb28733479dc33f8f207bc60617bd9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.425/magpie-cli-linux-amd64"
      sha256 "30e6da66332e381a093b5fd95d41896701bbf05c2fcd2b108a40a3ef31aae49c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
