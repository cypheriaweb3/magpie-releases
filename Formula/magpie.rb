class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.365/magpie-cli-darwin-arm64"
      sha256 "1ccdac0d988391108d034f24da5296298897ed26bbe46c9bbe0caa43a98b8a37"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.365/magpie-cli-darwin-amd64"
      sha256 "8d62322813dc80c452a125e81454bb765139391ebce512db37b3c9df64b715a8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.365/magpie-cli-linux-arm64"
      sha256 "88464c8c040fb90267adb938b7660e6b0f24b4f7e54e2f97b157d064cfff9e6c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.365/magpie-cli-linux-amd64"
      sha256 "0f55933c6d9f5e4ef54915c769719834609b2f52c03c9c813ebfdd07e87e12a7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
