class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.745/magpie-cli-darwin-arm64"
      sha256 "f5f34a4088e72425a7d6af5c89a003d9d2a580ecb8fef070f5bd4e332e074195"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.745/magpie-cli-darwin-amd64"
      sha256 "d71d75ff657d4b85226a7f958cb9a12acf1639a93a32f3c0bbc2da0285868fef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.745/magpie-cli-linux-arm64"
      sha256 "e9f62d29eee459fd54456db1812f1acf0a1df174a7e9d76d3bd30cf86a0d53a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.745/magpie-cli-linux-amd64"
      sha256 "63bd8fed98b55e5c9ffac2cff2d79d78c6d7a4c3be4b325890e7b8af1c721794"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
