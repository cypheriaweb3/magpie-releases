class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.548/magpie-cli-darwin-arm64"
      sha256 "a04da171430d978067c2c8a9cdfd132aa2b510c3837f0ddb4add86a55a1a7678"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.548/magpie-cli-darwin-amd64"
      sha256 "f4991bb22906077e00c26567f93256023cdf24bf8cc0aaa945f6d8cadbd486e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.548/magpie-cli-linux-arm64"
      sha256 "8b310064774dcdc9675a0099e4bd8f224fb81b6751736c128fb1fdc01cbc11c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.548/magpie-cli-linux-amd64"
      sha256 "b8ca14dacaecd8c2cf95f2c2dfb4484eb0d5c1b8cdffc9be78dadbb1f27266cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
