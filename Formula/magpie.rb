class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.874/magpie-cli-darwin-arm64"
      sha256 "1a6065547d86f28ca8656072b1714e4914396589e2b53ec2f8e387051f5e9bf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.874/magpie-cli-darwin-amd64"
      sha256 "0bf84153df02c9b11a664b2dad19fdb411ebaacc43fafd2facaf58ef9fe1ed81"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.874/magpie-cli-linux-arm64"
      sha256 "7b8d2bd392d6d68779481e2645ad384b74f146e7430024cb262443c2253d3f5d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.874/magpie-cli-linux-amd64"
      sha256 "3845e7df6be8657fb646e9cf51731147b3711ace754757c5e4c42785f7b81bb0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
