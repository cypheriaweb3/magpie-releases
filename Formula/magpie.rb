class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.412/magpie-cli-darwin-arm64"
      sha256 "e56c7ba85ab80b251aed2dd404fe81a8cc11d973cc11ced65a798f639f73631b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.412/magpie-cli-darwin-amd64"
      sha256 "de1f18c83b5b8c314381be5d5072b4d0ac7a37934014edb7fdc898d7212bf9ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.412/magpie-cli-linux-arm64"
      sha256 "32f737d198996b47b9d60ceeca9033b9a8f8764b59eb15ae15db712950f9289a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.412/magpie-cli-linux-amd64"
      sha256 "4ed476167211d52cf845044b5aa749d0ffc61efadebbf05b6eba4348fb49c24a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
