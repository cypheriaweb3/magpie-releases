class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.261/magpie-cli-darwin-arm64"
      sha256 "18f4217840a902107a9047f0b6fa6a3086830dd95f55acfff180396351bedf43"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.261/magpie-cli-darwin-amd64"
      sha256 "75d4b38196d19593f9e9a035a41be9bb0ded6af68359571dd741b4b3b38e4444"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.261/magpie-cli-linux-arm64"
      sha256 "4d4fc3a2ac6fd7dd05a6d0f7c2e543965843ca914218b5c5874adbc20043634a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.261/magpie-cli-linux-amd64"
      sha256 "80aa89eef8e1951ea855ca829758397f9ab1d8cf68e2319b3e602bae951f3166"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
