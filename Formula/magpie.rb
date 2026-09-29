class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.355/magpie-cli-darwin-arm64"
      sha256 "1901c84e2bd883b8e46eb48e54da4cf97301507040906c29fffc538eec33ba98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.355/magpie-cli-darwin-amd64"
      sha256 "0d8b5d71e2b2fb35b7fd0c392ace9b385e8a861c212b5744c5f82da0e10fe88d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.355/magpie-cli-linux-arm64"
      sha256 "22922b97ff2f8187b1484e9aadbf0d372e94308502ea30b73553592e41470349"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.355/magpie-cli-linux-amd64"
      sha256 "891749a42f6b3bf17446be5bd736b014fd8c251cd60b6cda2570c80d7a188b32"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
