class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.588/magpie-cli-darwin-arm64"
      sha256 "7dbe90b19d601937b09d1b7ab9bcc6b01578794f7fe7b23423d624ec1405a289"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.588/magpie-cli-darwin-amd64"
      sha256 "9a567473540f3d4770d87ab37c0ffb5d82a811c8835177758011c4281b296284"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.588/magpie-cli-linux-arm64"
      sha256 "6eebccf2b39763f510fe87aeced413d9218ebc065c3344635929457fbad5e877"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.588/magpie-cli-linux-amd64"
      sha256 "bf685beb0ff5d134091c7fd80e40e2cbc16c7f744ac9d32c3b432e6aec6b3895"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
