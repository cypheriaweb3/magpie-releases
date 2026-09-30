class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.549/magpie-cli-darwin-arm64"
      sha256 "95d1f997e3320c08892c3b84956527975d8b7c1792ea68f4de8614709da99ae1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.549/magpie-cli-darwin-amd64"
      sha256 "9c75228ef6574699dd4912e34e096b6ac34a309d78ce1ac5f8386bab08a14c13"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.549/magpie-cli-linux-arm64"
      sha256 "856407e06f597a319012ae3a8dc2ebf73af2edd2c8edb7a293cb25c92a105c0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.549/magpie-cli-linux-amd64"
      sha256 "9458eed8f67430c0703ba0fe5e89e41150d2b554fb346876da8f194b2dbb8fe4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
