class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.249/magpie-cli-darwin-arm64"
      sha256 "9a0c0e397069cd383b518b1d95052776e668c9af52456d2431261754696180c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.249/magpie-cli-darwin-amd64"
      sha256 "28905d3699df19de42b1e3eef4bb957030c8ee9ec5cb0662703dee11379042a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.249/magpie-cli-linux-arm64"
      sha256 "402ee22991e50d0f3c67db183bcb63e8272860800f9518c0b304adb923b6777a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.249/magpie-cli-linux-amd64"
      sha256 "dff34ca58dee46951bdcd25aaa79ce666bb4739e6ce69c104c50a4f5f88b4f53"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
