class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.648/magpie-cli-darwin-arm64"
      sha256 "f2d5df5c73b2a63a0dd8a0f582a16d7c7d0bf9ef341db076b81f0d8a8874b7d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.648/magpie-cli-darwin-amd64"
      sha256 "c5c06d10af274b7edaf030a72e0fdc327e95dcfc1034ec4de1a8656ff773f999"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.648/magpie-cli-linux-arm64"
      sha256 "6f03d1275684281de515949992b51ac24f5fa25ec9af02110b2756a8e2b73a62"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.648/magpie-cli-linux-amd64"
      sha256 "df425976ed70e4e8a14177b259d5f0bd1ad9d75f8f80d402c168870b89d2ab8b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
