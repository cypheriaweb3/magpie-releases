class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.666/magpie-cli-darwin-arm64"
      sha256 "6cff0d7e0a34acfc5d0270a499a6acbda79beaa1877890713d1427e746a381d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.666/magpie-cli-darwin-amd64"
      sha256 "9128b0d10d8bdb209f45a679fd8d32c0771101669f520e6bac4e8b20eb4062c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.666/magpie-cli-linux-arm64"
      sha256 "0d8021d67872cf1848d2ff03ba855a1ecae739f348e059e5dd70de04512a4d13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.666/magpie-cli-linux-amd64"
      sha256 "29a27da588402102fbb7615634a0566b2ea36952edeb5f9b801c86f43564ce44"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
