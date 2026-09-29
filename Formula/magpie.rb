class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.401/magpie-cli-darwin-arm64"
      sha256 "1d698f85647b4b21fd7cf504c100ec0dc48e37698c14f9930d6ad96d7ec495ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.401/magpie-cli-darwin-amd64"
      sha256 "6d196466a327be93fea83c008f47763962360b3c17a0d96ebb044dd002528021"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.401/magpie-cli-linux-arm64"
      sha256 "a9b49f584d1235e7b2324e63b2797ea2005c3d54ab04b4957b8dd2a98d9adc43"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.401/magpie-cli-linux-amd64"
      sha256 "f762491e711557ad0eef3068491bb35d5e2e6f5f2d1a3f7edd0f20b1534c103d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
