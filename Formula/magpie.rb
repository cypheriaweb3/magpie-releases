class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.207/magpie-cli-darwin-arm64"
      sha256 "aa98ca96b97b0e7e957923a2b0241510b939b78981a5d85641f1b24d041ffcd3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.207/magpie-cli-darwin-amd64"
      sha256 "5e666b3db54af97779f4b12419527399a61d7d9b53720afd078013a02bd82d72"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.207/magpie-cli-linux-arm64"
      sha256 "a29e3e06a2e1dfbff9086d6b3371895e6a624be1e581181613bd13b3c1cf7dc8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.207/magpie-cli-linux-amd64"
      sha256 "5781118ec3fbe8dacc5ce5e59483e65deaaaa31e5e4a8c56245bc2ea1651041b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
