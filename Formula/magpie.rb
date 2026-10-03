class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.714/magpie-cli-darwin-arm64"
      sha256 "a5f0fc7d46737178f86d98ac51b221d2de5feaa02bddb4e71d067e63def717c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.714/magpie-cli-darwin-amd64"
      sha256 "9dd2c94609a7f4f4f9e7e9f329f7d22888c406eb869987c942b37345ed91ef05"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.714/magpie-cli-linux-arm64"
      sha256 "616990dbe18b0a94b7e922553f0fa0fd0ec2b8637316de0754efc2594075a023"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.714/magpie-cli-linux-amd64"
      sha256 "d238a5fb88eb9dc1a8e7ed33576691fbcbdf726944b8d44ce1e2d79c12e71a0f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
