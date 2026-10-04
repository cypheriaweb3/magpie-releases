class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.817/magpie-cli-darwin-arm64"
      sha256 "b76e7e5ecd7c2ae697786d0eb6f041e227cdda25f1732ca9d94625890425d235"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.817/magpie-cli-darwin-amd64"
      sha256 "b7443472096e856eefac317a4f955db1495e4e9e0ca49c8dbac641001c77daf7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.817/magpie-cli-linux-arm64"
      sha256 "9a12d52611f1ffbd703c176f2b073a469586d6f415aec799b0142abc66589c00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.817/magpie-cli-linux-amd64"
      sha256 "483d74e4f8054bbc3d3874b6c20ebb3a2445af85cfbbae6ef9cca0caca94c966"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
