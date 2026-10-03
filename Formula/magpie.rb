class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.728/magpie-cli-darwin-arm64"
      sha256 "7c75c6371890e652f00577cc7491c50bffa4e60571011bc73065a45218798201"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.728/magpie-cli-darwin-amd64"
      sha256 "81171019bee13980c5df72283242cb16d66d14f19714b628e8f91e776882a2b8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.728/magpie-cli-linux-arm64"
      sha256 "ba3ea84a579fb09628bd516feaa74f060ca971d002ea51a9b72c738cbe899256"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.728/magpie-cli-linux-amd64"
      sha256 "6077f72e9eac94ba34c373896b433e8c7d68f0401cc36e074370d7e0eb3f942f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
