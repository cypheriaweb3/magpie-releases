class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.477/magpie-cli-darwin-arm64"
      sha256 "d7a82d918bd9a1390b8fc86421ceb4995a46d96f8967738243159efd0e507ff8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.477/magpie-cli-darwin-amd64"
      sha256 "82557b4d004a5bd0d36b44487ac8ab0d80ddce6ac48b3e954870e5c77e15f7a7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.477/magpie-cli-linux-arm64"
      sha256 "74c90ea84c63ba268a64635d880cf62476720695b96e96cad5ab1f6589deae91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.477/magpie-cli-linux-amd64"
      sha256 "e55779aad1281b2ffd24acd34cc9b09e08301970e29db8a9a6356d4f75943e88"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
