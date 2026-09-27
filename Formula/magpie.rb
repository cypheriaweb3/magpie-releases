class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.198/magpie-cli-darwin-arm64"
      sha256 "638b6e8f53cbe116bbea6ced1f1c2aeee8a18d8048203dda190be79ae32de90e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.198/magpie-cli-darwin-amd64"
      sha256 "63aa12bb5f56ed058fe0bd2e13cdd6fb1beafbe81a84a75ed1bb638b549300f0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.198/magpie-cli-linux-arm64"
      sha256 "b3caf3241354af734b6653d7ed5933b104b16dc59235fea13636ceb897fb397e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.198/magpie-cli-linux-amd64"
      sha256 "7d358d296bfd0bee47783ce9b3c254410774ea51fab6457e35c9c8b8d7e7bd5e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
