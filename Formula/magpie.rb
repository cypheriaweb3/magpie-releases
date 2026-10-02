class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.689/magpie-cli-darwin-arm64"
      sha256 "6c4660da114caed8109f138debc1f002f8f735a0e4ff5de8b3dee365503ccadc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.689/magpie-cli-darwin-amd64"
      sha256 "a9ca29988624e8e418d9c8b5a697d0428436a9a32437bb21967336d920fbe92b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.689/magpie-cli-linux-arm64"
      sha256 "ef054124bff0460f9cd6003210c259bae176e475efe7c72b80d8bed006a71946"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.689/magpie-cli-linux-amd64"
      sha256 "0a5f47cdceb798861a6dd0c8c85f42a24dd07c727f0f326633aeca3226cdb131"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
