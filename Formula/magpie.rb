class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.665/magpie-cli-darwin-arm64"
      sha256 "4764649a46fd144c769bb9b8aed373d80f306da90ceb729a2edbf279118ba443"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.665/magpie-cli-darwin-amd64"
      sha256 "4878a44fa22bb2c048612bac9f67dfdef1abca5ec2761f30683ab727e069e45d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.665/magpie-cli-linux-arm64"
      sha256 "b49fc3696375195385881138abd1ed097919a7f6822f8845bf02d3b382be4bbe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.665/magpie-cli-linux-amd64"
      sha256 "77c5c9fae01c19f19f4dcd7f46f8cd1cd8866beca19c01eae6760420da15cd69"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
