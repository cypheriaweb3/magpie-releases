class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.398/magpie-cli-darwin-arm64"
      sha256 "45c7a7203b24f74f972030a14ea3acd2a8b4178742a82b0814a8fa0a4b99c09b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.398/magpie-cli-darwin-amd64"
      sha256 "91751825db21d32a6b3c93ece00dd12faca64a7af1758604eabacef98eda1a22"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.398/magpie-cli-linux-arm64"
      sha256 "e8eeb3ba7ab770deb4a35cb16921b5d4cc54447363c5f467c898d054d9259ee2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.398/magpie-cli-linux-amd64"
      sha256 "8fa536626b0044edd6cb0b0b942140f5c8213d89e0768b4eb67526b1b8c41ea2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
