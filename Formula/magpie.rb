class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.867/magpie-cli-darwin-arm64"
      sha256 "ebfe5c1fe7492ebc54a8190bfadb13c531b086251e89276127f5be741bdde1ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.867/magpie-cli-darwin-amd64"
      sha256 "a7c2db3c944b4f085b9cc6d735cdd1136828a306e5a0c3ea842dc467d718dbb1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.867/magpie-cli-linux-arm64"
      sha256 "78d5d745274c6e7f8067cdabb8c5b1548bd3300a3b1875de852f346c2bae909e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.867/magpie-cli-linux-amd64"
      sha256 "84e74530c41038cac340bea2ba30577899f454afebdd486ea84a134bca61e8bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
