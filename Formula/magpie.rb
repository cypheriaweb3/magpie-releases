class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.252/magpie-cli-darwin-arm64"
      sha256 "f91739120a3d7dfe5cc726e29d93f26f1dea2538baa4d5ce60b8c9260e8cb0a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.252/magpie-cli-darwin-amd64"
      sha256 "66cafd1ffa6adfcd02e5309ded0489b8545243ac84682f55298c73b541aba661"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.252/magpie-cli-linux-arm64"
      sha256 "c2f8f24367fcb7a2c7a1e7df4f4aa3d797e22c5c7afdd488b0a3c5ff03109f96"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.252/magpie-cli-linux-amd64"
      sha256 "757f6a91644969c944a439069b54897bf4c638533684e21db912d4b8f0972bf4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
