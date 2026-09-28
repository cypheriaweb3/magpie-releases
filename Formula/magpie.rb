class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.266/magpie-cli-darwin-arm64"
      sha256 "222931816ad8e520a8f4048b2ede25f54188d10a5c5f4893233f524bd1857bff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.266/magpie-cli-darwin-amd64"
      sha256 "e35c4c26f52f12b38c6e1ed915a3bea0b6b74553a1d92159afee6edcd8eb3746"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.266/magpie-cli-linux-arm64"
      sha256 "253a916ec97435e36cf8471525132b24e072b8dc516a39e40035f89db0ce14bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.266/magpie-cli-linux-amd64"
      sha256 "c8a06b01d15386376144ccb0ab671905bd33df02fdef0135370b570288236385"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
