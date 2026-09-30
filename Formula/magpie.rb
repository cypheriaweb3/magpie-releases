class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.434/magpie-cli-darwin-arm64"
      sha256 "dda4d1609952995421e4060f8b01aa605ba74939bb483a962795fa69c0231d47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.434/magpie-cli-darwin-amd64"
      sha256 "9a133387b0b623811a67ef5bb2a2f618b73ec3397a5ca00ed9a5a38dc854056f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.434/magpie-cli-linux-arm64"
      sha256 "d9ac6fe6fc37abe7ca685a3426e0ad1e608fcbae70c81dd623c94cd38e1fd3ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.434/magpie-cli-linux-amd64"
      sha256 "a634b7d7c20fd8dea9bd2d0d2fce3759f757b6c911484a733e309a6394a8bee0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
