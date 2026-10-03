class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.746/magpie-cli-darwin-arm64"
      sha256 "7c44f84891c749aa6bc3101acf69fb57e4256d64b74f85513f3c9102768d4ee3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.746/magpie-cli-darwin-amd64"
      sha256 "ddc7fbdfb4a3807b9db14a1590dd53ea6e288f1e7f6c3218bccfca228f2c1fc5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.746/magpie-cli-linux-arm64"
      sha256 "ef92aa22907d110d141d8c23cfb5d6010ea61ba0840c6472572e525c2bcaf6f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.746/magpie-cli-linux-amd64"
      sha256 "c20e8f28d2fcf29d4d9bc5713ecdb31afd3c4ebfa7531b3cd1c34149541d6415"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
