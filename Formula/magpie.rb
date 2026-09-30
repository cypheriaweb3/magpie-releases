class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.439/magpie-cli-darwin-arm64"
      sha256 "02d9a1f17210e4f453a6f9f756f95a54d20f77da5930212e257e3d9ad3601b66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.439/magpie-cli-darwin-amd64"
      sha256 "490844228db9cbd0ec9281ab849a206847c5a54571b92705fa9f10d333eabb8f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.439/magpie-cli-linux-arm64"
      sha256 "6526eaf4fcf895895cbcabb3f47e0ad2be30f7638dcf77e7553433d1490ecd6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.439/magpie-cli-linux-amd64"
      sha256 "5978250a1eede77ed288847e87262966a62661bf1c9f6583a7974a9da7dba3ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
