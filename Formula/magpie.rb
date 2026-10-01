class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.608/magpie-cli-darwin-arm64"
      sha256 "5b190e0db18185f2bb61e7bb8f63c643325ed604661511862e21ed4bfcbdab7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.608/magpie-cli-darwin-amd64"
      sha256 "49b61bbaea53e4bde3da404b6e85badf58d2a448637da3fe7c5f4fa0b5b05e69"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.608/magpie-cli-linux-arm64"
      sha256 "fadb8abd2f2ff4530f00e816ce834d0cbeeac874837c1f4cccf0bea0d6aa02b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.608/magpie-cli-linux-amd64"
      sha256 "2388e928263e4cb1b4c55ec3e45c674b89138b94ce0317c1f2ce5a61231c13ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
