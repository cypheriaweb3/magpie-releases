class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.788/magpie-cli-darwin-arm64"
      sha256 "1f2da7d6430cdd231e0bf3f0b26455c54e07f7b9d237e8c89e3b2cf1a4252254"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.788/magpie-cli-darwin-amd64"
      sha256 "ec643483827d2343c9a572a00f19599547a5e98d27cf81ae6471f9578c353abf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.788/magpie-cli-linux-arm64"
      sha256 "9c26099956a8f3adfd8ba5923d45e4b26e6b603434ebfa6da34a3903b1cd6ba0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.788/magpie-cli-linux-amd64"
      sha256 "ab871f02e740103a3c383bc7235f472dcd886f1e06c958d16e23fe8374459205"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
