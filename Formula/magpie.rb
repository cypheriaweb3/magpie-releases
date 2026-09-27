class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.199/magpie-cli-darwin-arm64"
      sha256 "a0d88c89f546b7b89cdf0d9493541cf597680eb64c72ad96e651dac385a16464"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.199/magpie-cli-darwin-amd64"
      sha256 "d5f4180f6cd4383d288711f3f02cc79c6e3ac5fbeb6493e418fae438c683165c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.199/magpie-cli-linux-arm64"
      sha256 "df3ae5be23c66cef87fe0b9b6f9a3f62847a8f6831c4a40aae0353030d972502"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.199/magpie-cli-linux-amd64"
      sha256 "43275156f9b271e658e5afc0f262f2e3d65a15be86d4d63abd1b6ecdb105aa39"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
