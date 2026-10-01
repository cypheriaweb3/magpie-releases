class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.606/magpie-cli-darwin-arm64"
      sha256 "5442fcbb2dbe169c67048417f36e5174ebe43a5464a9e0aca4971be40301e9b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.606/magpie-cli-darwin-amd64"
      sha256 "d99e3489876ecbb116341b7fa3fe53de35955a8a65419029dc4c6544f28df786"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.606/magpie-cli-linux-arm64"
      sha256 "4bc4d5d1dd10a1c74a499a9d70d2aaa62e4c167be210f5eaaa162bc3bfe2f42c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.606/magpie-cli-linux-amd64"
      sha256 "96d63ce9bdebe31203981449f03ed4cea1f426c9f46c06f740c32f0fcb39ce09"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
