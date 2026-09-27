class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.191/magpie-cli-darwin-arm64"
      sha256 "0ded00ab97f251e0a50460bd37357346f873413e3e8f6862618c641e7d5ab071"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.191/magpie-cli-darwin-amd64"
      sha256 "c916ef1de4c40ad74fe0bbe2215502fa4820d7b5efe5403894619d502c6e827c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.191/magpie-cli-linux-arm64"
      sha256 "ac8cdf6d9d29c62852494e36a77995c29f1407912279e731275880299288e128"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.191/magpie-cli-linux-amd64"
      sha256 "fa543841d983c99352e20ab95e606e74066834469618ec4d7bca34b6c729b3a3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
