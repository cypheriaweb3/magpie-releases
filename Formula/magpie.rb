class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.877/magpie-cli-darwin-arm64"
      sha256 "ffe010521c20cdcc380e88cbf1a323e72b8f2a52482f354ecf5363339ed0582f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.877/magpie-cli-darwin-amd64"
      sha256 "43d611fc9ecfc5b6faad5335fdc9bcfede191b4a46dc7f2603e40ed02ecd26e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.877/magpie-cli-linux-arm64"
      sha256 "6ec97c35463d3861dbeb349dcf011e1dc1988267a7f2319fb70014d359d7d2da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.877/magpie-cli-linux-amd64"
      sha256 "31eec19df4b5c502c0e976b312d77b8e0cc54dd6e44e09490b568e22e19b8735"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
