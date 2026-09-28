class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.348/magpie-cli-darwin-arm64"
      sha256 "6ea3044b7ae8df8fbbf248907afd7a2e16c4b1274710ca988ac0bee4f8d1f057"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.348/magpie-cli-darwin-amd64"
      sha256 "99eaf428e8ad06e46cfccb3bb3ac10b392ab13065e4642d6a1bb01d68661f8ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.348/magpie-cli-linux-arm64"
      sha256 "af5623557033c8794a4723598dce732e8b0dcc58df649eac4abe47d2f634112b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.348/magpie-cli-linux-amd64"
      sha256 "144077b696be93bc790a582d429b02fdd7e4573617dbea9d953f3990c9e682db"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
