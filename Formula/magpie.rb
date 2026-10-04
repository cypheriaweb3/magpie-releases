class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.857/magpie-cli-darwin-arm64"
      sha256 "61d4805f09fa6910099546aa02ca6afa910c3b029ca3fb6f0496ef79f6fb7e8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.857/magpie-cli-darwin-amd64"
      sha256 "08bc49bf7a42cd365718d72c3be51e6d5c505021c5c68834268b8f595cf4f4cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.857/magpie-cli-linux-arm64"
      sha256 "ecc53ffc4c0f40f1f08bcb0e6bbebe6c341b82d2ddb4cb86787e02f4dff61d8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.857/magpie-cli-linux-amd64"
      sha256 "09c85e70fecfbfdad1824752dc2dcb9bc3eedebbce3743731331686169a44ec9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
