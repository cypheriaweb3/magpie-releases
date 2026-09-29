class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.418/magpie-cli-darwin-arm64"
      sha256 "13ea953266ca7cdc84fb01c97a50e7cf825555d96968566be947eb6a7dafdcae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.418/magpie-cli-darwin-amd64"
      sha256 "2039a131482233d88cb2bb36cc4fb5158711d1a4ecfccaa3b517d4386f828787"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.418/magpie-cli-linux-arm64"
      sha256 "578c76dbf071c8168d49cee31e00aa052905057208e01ed56f37d7ef7069dfcc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.418/magpie-cli-linux-amd64"
      sha256 "5f4d39d491fcf8e690f44c723978bb6da95eec4b7126cd8ad50676625744dcb3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
