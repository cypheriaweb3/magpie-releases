class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.774/magpie-cli-darwin-arm64"
      sha256 "b091c32a65cd5fbde2f9fd2b10e341aa4236b6c16f421fc5bf157bb6ee82ee1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.774/magpie-cli-darwin-amd64"
      sha256 "c36260c390c5c954eface99f346bd0f8737b2a3d0ec88facf8b3bac739e5674c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.774/magpie-cli-linux-arm64"
      sha256 "d868280137224ddb25445f7a04e73a979c1015f1f62580efbb4eba1af4262829"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.774/magpie-cli-linux-amd64"
      sha256 "9f36205d3b8af168d91f6f9de1a16bafa2aac99773e3293c220b87774a276a1c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
