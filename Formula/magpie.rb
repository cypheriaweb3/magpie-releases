class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.797/magpie-cli-darwin-arm64"
      sha256 "55f221546dbf6a01c79133953530ff16bdf6d8548c3b9ecd7a7e14088dd4067a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.797/magpie-cli-darwin-amd64"
      sha256 "d07f1e7428ed41eb49a95bee35a7b600a0828e9683f29f2f90b4e355a577cddb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.797/magpie-cli-linux-arm64"
      sha256 "58b1dd21072da8c4b3cf068a9d83aef30aa9b1a4e41ffeab9bd4c40a7d20af6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.797/magpie-cli-linux-amd64"
      sha256 "222abdf36bfff98e241c47e76116b978b0324078498abb6aa75a59640ea20b45"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
