class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.852/magpie-cli-darwin-arm64"
      sha256 "b17f63f7d1b4acb70965eaa25b9140bc99129ae874f41244dad17cd603a67d8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.852/magpie-cli-darwin-amd64"
      sha256 "22257fee342cea25a1fdad1d7843a41b200c5364c5ed9c25760c1f10420e9eed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.852/magpie-cli-linux-arm64"
      sha256 "59cc07dd5bed8074467b60c84645c915e57a80f854732ba4a255c2e01c217bb6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.852/magpie-cli-linux-amd64"
      sha256 "961558e6abb336659b079af6d023a59153987e87c77a16237ed2c7db05a32525"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
