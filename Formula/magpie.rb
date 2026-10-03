class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.791/magpie-cli-darwin-arm64"
      sha256 "118142bf8753ec723c3d7ee5c369ef3cfcfafeda0c0a6a2a3935f684fae84609"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.791/magpie-cli-darwin-amd64"
      sha256 "e3ebfeba0b0cbf50a1046fef468c89306edef3b55604b70d11da50e2d5ab6380"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.791/magpie-cli-linux-arm64"
      sha256 "82f3193fd3d1a611850c2ed57e60f14dba7e7a6b346659f015c4198fe8d38dc5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.791/magpie-cli-linux-amd64"
      sha256 "a3c225545d909031cc8e8d387ac94c57e712709b0f89e8a00b9e9803fcc131f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
