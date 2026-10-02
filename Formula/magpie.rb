class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.690/magpie-cli-darwin-arm64"
      sha256 "5c49c25a3f5fbc1db09bb686d6ca2d12e751d7254427dfacad03668ae906945b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.690/magpie-cli-darwin-amd64"
      sha256 "d0372c7894152e8ac081da027cf3380598fda1abef2a04e0a44f0dab04d49477"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.690/magpie-cli-linux-arm64"
      sha256 "48da0c8fe74100aa1858d990908e08536bc3e02f21ed19954c6e51bd4078211d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.690/magpie-cli-linux-amd64"
      sha256 "b0fad0e4ed0067a0a2371e7201b0c7d28b657a3bdb99c6bf024d58fc65b6178f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
