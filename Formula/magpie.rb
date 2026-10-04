class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.861/magpie-cli-darwin-arm64"
      sha256 "482fb6a38e7f46ab65c64042bc4d4a541c06aafedfe49ba128408a43d3232c70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.861/magpie-cli-darwin-amd64"
      sha256 "878521491f3ca4256c4dc5305ce93b8b3cfd8c7f0bcdb0fc32533d4460cb0a53"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.861/magpie-cli-linux-arm64"
      sha256 "2c88a7146fbb1e8552beed0341d83fa5e5b181b678c7b2dce1478a2f3a71c218"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.861/magpie-cli-linux-amd64"
      sha256 "88916dbd9f9468a4ea22fd10669c41a80de0dd48ec69397cda5fbc181e25bc4c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
