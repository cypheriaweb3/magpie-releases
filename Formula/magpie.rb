class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.373/magpie-cli-darwin-arm64"
      sha256 "2f2c7bb159d9c8820c8dc00126f16a9490205914dc82ef8a52f7ab70ffc26e70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.373/magpie-cli-darwin-amd64"
      sha256 "89f91c8b35c9cd83d49c70cfe08d496b66a0304d2f7c856f1617c71964fa8184"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.373/magpie-cli-linux-arm64"
      sha256 "58320aebd008b31f028a895b8b1415ce21e19f58045cc496954fcd01d55ca5ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.373/magpie-cli-linux-amd64"
      sha256 "98b47ed98fb444ce60ddb8638e308dd62723035c74c35aa4c3130b324e28874c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
