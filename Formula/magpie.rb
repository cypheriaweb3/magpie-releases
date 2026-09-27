class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.176/magpie-cli-darwin-arm64"
      sha256 "c75a74d062de48773db70f31f6473989b354c653e81b1a2fa52fb0364fd870aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.176/magpie-cli-darwin-amd64"
      sha256 "a1177965419e2e62e23e574c5574e78d9e67753ff15f5a24d1126e9ae332bfd4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.176/magpie-cli-linux-arm64"
      sha256 "570ea6e53b2fac5c0b31cc384a4780f8f4940b85bb70294422952bea8c225e5f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.176/magpie-cli-linux-amd64"
      sha256 "13178edb813102cae68ce606c1d956b2e8d7b29a4688f9452e9e972006c71473"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
