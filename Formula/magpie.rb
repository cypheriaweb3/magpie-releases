class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.204/magpie-cli-darwin-arm64"
      sha256 "bed618be2e359322226c4dfc2bd2ee6dfba2dca8362ae64fd8b8d823a61defa6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.204/magpie-cli-darwin-amd64"
      sha256 "25a6a5992242f7efe70e63737cdc413e668a4722b0fce6021ce85d5ed7623e1f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.204/magpie-cli-linux-arm64"
      sha256 "e1446e91d0355ad06c6017397c65de608f461d22531b5d2f2c4857ab901aae0c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.204/magpie-cli-linux-amd64"
      sha256 "2363fc1541323e736897ffcfcc7d02022341e43eb10808024e750a2b8958d099"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
