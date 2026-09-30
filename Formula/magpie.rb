class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.522/magpie-cli-darwin-arm64"
      sha256 "8167ba9ee5b3d5d99aefdbad0042d23cb2fb3df51b422dee117bb50ca2770c40"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.522/magpie-cli-darwin-amd64"
      sha256 "b240206ab393bf0ba37c8cc01948bfa89517da6aec9ac2620163124158d4c38f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.522/magpie-cli-linux-arm64"
      sha256 "c875bed7df9850408b1d19adada01ef278c30a46445460c7089bdf3b060370bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.522/magpie-cli-linux-amd64"
      sha256 "bd171535d37f9899b19b6061f22b351bdc98b08ae361cc3190b96b25f82b18a6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
