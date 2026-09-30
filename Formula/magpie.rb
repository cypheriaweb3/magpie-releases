class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.533/magpie-cli-darwin-arm64"
      sha256 "b1c15a6165ed57ede3dfa73eb65702bad1c64e95c8c3dd7305af4decb68887c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.533/magpie-cli-darwin-amd64"
      sha256 "611e0ff34b0b6e9374071d4907ad7b9534a4008e7d2ac1b2cbba341f9c452932"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.533/magpie-cli-linux-arm64"
      sha256 "812362bcee2c29fc28ca4e9e1be28454dfaab6efe260edd8443d97c0da391a2b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.533/magpie-cli-linux-amd64"
      sha256 "15f1b9081b79228853c1eec3808b37cb24bb8535fa84a9db1aa29c873c40ebd0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
