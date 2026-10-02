class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.641/magpie-cli-darwin-arm64"
      sha256 "e7474d9974e7250fda4cac336cda99f01c274c95c300e0b28748a0a1cde937a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.641/magpie-cli-darwin-amd64"
      sha256 "70b2c1610a470b292029c624b6709a2e9625f6005fcc15b1cbaa9ba2374c862f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.641/magpie-cli-linux-arm64"
      sha256 "e2074502b0ff921464246297fc4c092534af92acf037f88c77aace2d475c86de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.641/magpie-cli-linux-amd64"
      sha256 "f2eb3f43cbb18267668235bdc48c68d8d6f0269865148663b09db045a34bfb8e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
