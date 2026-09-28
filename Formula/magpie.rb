class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.255/magpie-cli-darwin-arm64"
      sha256 "e3cda0e60f922cefc05fee15b70a7d2f73052840cf0a9e3ac548a354ad0f355f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.255/magpie-cli-darwin-amd64"
      sha256 "c8d28d9a571281079edb57fde508f4440da0cbd9862e80b5ccb3c840662138a8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.255/magpie-cli-linux-arm64"
      sha256 "bb478195eaeef2b5437804f348f89b61d53d0537a0be5c3c417cf63bca0bde23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.255/magpie-cli-linux-amd64"
      sha256 "a9bc43d27fe9351c239fc7780f00261e6037925e4fa1b06cb63eefe5e1206240"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
