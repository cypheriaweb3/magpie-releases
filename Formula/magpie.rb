class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.887/magpie-cli-darwin-arm64"
      sha256 "4d14898427e5a78b022256603085cd750419beff2ea51194f42bbbad545cf46a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.887/magpie-cli-darwin-amd64"
      sha256 "7187080e96aec50698a728642bdc3091c4ac513b2b50e6631cad9de74b277cb5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.887/magpie-cli-linux-arm64"
      sha256 "95009d716335709c2be3210ed64eb072e6f54d7bc5c90cca0b9863f65abaa536"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.887/magpie-cli-linux-amd64"
      sha256 "911df5f1c54015bbfd2d13c0180499d099e857d7813ebd5c6e47bba0b876583b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
