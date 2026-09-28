class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.271/magpie-cli-darwin-arm64"
      sha256 "df066ef8234b409d2aef505ace0f2bc3064d6202220afabee9639953b6865542"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.271/magpie-cli-darwin-amd64"
      sha256 "127a77a97482b2e30f75d145b688f361aa2f524ba54ecb4004a74505f3dfece6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.271/magpie-cli-linux-arm64"
      sha256 "f6713068617adb083c15907ea653bdd36c5121ed4ccae7929fef38110c658788"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.271/magpie-cli-linux-amd64"
      sha256 "f7d9a01058ff1c591decaf0ee7611ac35e432ddd7ea0e6f7dd628b2ba07cee83"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
