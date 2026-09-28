class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.327/magpie-cli-darwin-arm64"
      sha256 "9db401e10019d5d24b6d7b7b0c15ef6b15f8767f584fae917013acea337041a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.327/magpie-cli-darwin-amd64"
      sha256 "33543a0ee846418ad09a40c4acff5ca10506bd2a153130a24bea3c09bcee9b8f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.327/magpie-cli-linux-arm64"
      sha256 "c9fc6117958f693134c016faa34ef0e583a7008735341823d39aee6333f1855a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.327/magpie-cli-linux-amd64"
      sha256 "a6e3c8601bc099dc602b28e5fb46b8287c91e0b7eb6fb36d8b2eee2555a28239"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
