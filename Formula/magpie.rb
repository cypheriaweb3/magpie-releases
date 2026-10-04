class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.800/magpie-cli-darwin-arm64"
      sha256 "4f658aa60453d90d10909c391da01a06fb1f9ca38512235e0096b9d24da5d19a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.800/magpie-cli-darwin-amd64"
      sha256 "b00bc20d3b0e825c7be76d0d55340c380e6cd632fc8abe3c8ec6cae31820b9ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.800/magpie-cli-linux-arm64"
      sha256 "bcd843103c2de9e26bf5971f3a66232eec18f8518fe24f5419307e7f1c741fae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.800/magpie-cli-linux-amd64"
      sha256 "2f1feccb689d65e47803d507c4afd48c8efaeb312b9fb0ed3088b92d6bf18a79"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
