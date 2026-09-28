class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.227/magpie-cli-darwin-arm64"
      sha256 "57674cee52f4b8c15d8d9138b98b472632ae9ced5b276248e2e8277ec3234b6f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.227/magpie-cli-darwin-amd64"
      sha256 "f0afb752a254c54580749d23936e470d2e608bef9b54378e04a1b2e278de00c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.227/magpie-cli-linux-arm64"
      sha256 "8fadaef15f3f493a12036ddfaad9c836639691e81fbaf2c56958a42fd93481c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.227/magpie-cli-linux-amd64"
      sha256 "8a92efbc83b101c72967ca3c4b67df9f44b1f47a1f0ec9f9e071484eed8f0682"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
