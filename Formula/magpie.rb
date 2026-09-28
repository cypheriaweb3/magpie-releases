class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.309/magpie-cli-darwin-arm64"
      sha256 "5e76a6382aef11891d3aeef031a525777f08f4f8769c4041e91e91b75ac9db9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.309/magpie-cli-darwin-amd64"
      sha256 "75f9dd6e474ad71be16c1af0434ddf9cc6e605a7dfd6d63639f96ffda894543e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.309/magpie-cli-linux-arm64"
      sha256 "2be24d6640a1ddedabe1406cd1f1272dc3c0a12e7bc62532cccf24dc4ce4d73a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.309/magpie-cli-linux-amd64"
      sha256 "b728a1513e61e0f613cb848ed460f0c8d93fdfe495f2c53e711a98ceff102c2b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
