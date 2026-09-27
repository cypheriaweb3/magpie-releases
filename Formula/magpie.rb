class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.172/magpie-cli-darwin-arm64"
      sha256 "2f11558c5c10e9cb52daffb799e6218cce07e21b9ad50bf741d4c53d39d344e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.172/magpie-cli-darwin-amd64"
      sha256 "17097ff7c7887f0a47a2a93960ff9f5a8cfe07f8bcea7d49fab481c9954123df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.172/magpie-cli-linux-arm64"
      sha256 "938bdaa090dec3a2c6d7d5f75a76ce1d87212653d4527ef08961b9f3dd9901da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.172/magpie-cli-linux-amd64"
      sha256 "961e26662c8d4517ce61559ea9111903e85b61af95c0da1a0d91ccfd18c38ece"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
