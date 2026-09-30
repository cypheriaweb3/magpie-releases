class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.538/magpie-cli-darwin-arm64"
      sha256 "913d7f785e08123b098055546e6a628cb91a9485c8db9b8b4b928040e2c11e1a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.538/magpie-cli-darwin-amd64"
      sha256 "0159aeffd9144ae514b4d5f0f0a82b8f5c709de161dafbc31bf678bb4b365778"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.538/magpie-cli-linux-arm64"
      sha256 "a9b868667a279802dcd70740d6ff892f78f2c7926090b49201b170e659fdf4cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.538/magpie-cli-linux-amd64"
      sha256 "c0cd74f5ea227305dd51bf8e7d550be94193de5de98206f1d44a841346953f6f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
