class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.417/magpie-cli-darwin-arm64"
      sha256 "c7cb8aa170550b0a85f367f0f12dcd356b9fcad2efb6c94aa9650bafdd262722"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.417/magpie-cli-darwin-amd64"
      sha256 "27faac2bc14be9af7c35186b1c4965dec1f982b43203bd11ef5f4b70bba4abae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.417/magpie-cli-linux-arm64"
      sha256 "43562f5889b0d847be4ae7db7cac92c6ea8829004c77e164093e9ea52473e017"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.417/magpie-cli-linux-amd64"
      sha256 "6514945e1054a43aa3eb958b754dbb4cb61a632c8010d08aa472936a9e8cedd3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
