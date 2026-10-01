class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.611/magpie-cli-darwin-arm64"
      sha256 "be79cb4fe7b8c39af0edd44f90eca2092ffefc9f3a01c915e53cc98058944940"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.611/magpie-cli-darwin-amd64"
      sha256 "d09b317bacc08bf2649cb08d2b9f846bf27bffe526ce7aa7713385f75ab5c962"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.611/magpie-cli-linux-arm64"
      sha256 "23d71fb931c7df518de271cdf17cdf019efbc21fae0fd7e39aeaede6c85b3f70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.611/magpie-cli-linux-amd64"
      sha256 "430c8bf7e200712af6862349fcbf50ecdb051bb9226dc4412c114cdfadbea41c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
