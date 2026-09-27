class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.166/magpie-cli-darwin-arm64"
      sha256 "54f0aaf16f5f92e40a1c028e629aa5cd02f7d69a792d1c89650b3249ffedd6f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.166/magpie-cli-darwin-amd64"
      sha256 "ef0ef1af4b8e3ac889c1cba6b9771bb78ea7cf03a021997521c1146f4adf4883"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.166/magpie-cli-linux-arm64"
      sha256 "2ae0511e6640a756bb46604163ac8b8737920dadbdac6ad0aa702c4f6c538597"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.166/magpie-cli-linux-amd64"
      sha256 "8c81eaf205aecce7d27848e54a4abd1526d1dc9da6b096cec3373a91ef6c9002"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
