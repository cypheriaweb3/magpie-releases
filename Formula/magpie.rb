class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.335/magpie-cli-darwin-arm64"
      sha256 "ccd61c0e1a46591d13f4cb9c6d19caa1c9a31a31ae01b44a82036ee0573897e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.335/magpie-cli-darwin-amd64"
      sha256 "21957042e89543e9ee6dd11aa1ebd3a9b09368db91b2fb548299102f7e7d8c4a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.335/magpie-cli-linux-arm64"
      sha256 "e10d5dc680c488ff24a68c280ab2747d985f78fa1d2ad8586f231cfb949fec63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.335/magpie-cli-linux-amd64"
      sha256 "d473f894d076a67b10ab272660731eb731b3632abdde49de53d4cc4134d7511e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
