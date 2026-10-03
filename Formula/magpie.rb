class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.734/magpie-cli-darwin-arm64"
      sha256 "4f524b0be8ed555ab4da1705e2d5ea15e1d5ea2380f0eb40a9da2290a6fb9bfe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.734/magpie-cli-darwin-amd64"
      sha256 "17303be3b7413c83f2448e9034583f6742060bfdb8febc6091eefcea3ee0f61b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.734/magpie-cli-linux-arm64"
      sha256 "da08c0efa6cc3406c71b69f3d0462323a2fcba7840565c4026699e12c915f280"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.734/magpie-cli-linux-amd64"
      sha256 "a23586a1c01fc341eead5e897ccd485fbca8f65c8b34ae203534e20bd6b055df"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
