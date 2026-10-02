class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.637/magpie-cli-darwin-arm64"
      sha256 "55c8eed68a32105bada490cd25aeea0472a030854c88c54f1783fa1539f50d79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.637/magpie-cli-darwin-amd64"
      sha256 "b2b4bd5a5af5b96ad9f2f7ae4491ae6512a30404e70be9c94a2ac812bcd0af43"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.637/magpie-cli-linux-arm64"
      sha256 "091de78e9d3be553553e07332740b3c4e65b0e6b980c0e077d261a1c555ec72a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.637/magpie-cli-linux-amd64"
      sha256 "7674cff6bf4f58053402cda6a874974f497639bd6a12aa8cf8b5e5fa5d9a42f6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
