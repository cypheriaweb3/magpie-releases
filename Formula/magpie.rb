class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.474/magpie-cli-darwin-arm64"
      sha256 "270ff7cbfe133a854f3f2a9fe6e366cdd0bb3e8715628340ece5fac87523b4df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.474/magpie-cli-darwin-amd64"
      sha256 "bbd9dfab790c5abf95e2a1ea40f5292bd9d680b9957b942632182a393def858c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.474/magpie-cli-linux-arm64"
      sha256 "7d0a1d8ff140087e7c6e12caea2a800733a37f0a7fa4a5f9202d1f995291dffe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.474/magpie-cli-linux-amd64"
      sha256 "8d98abae7a072235e8292fde1fe6affa83fff69365e45f5775e3aee38c2f44aa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
