class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.326/magpie-cli-darwin-arm64"
      sha256 "6700f80b290e7534faa8ab3e62ef703d259b1fb83de6c6112d11e3497e5bd061"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.326/magpie-cli-darwin-amd64"
      sha256 "cc28088380ce8e1fd615536d6ba23f4ab73565b8d4661c546458b523ea9fd1fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.326/magpie-cli-linux-arm64"
      sha256 "a287f67409c1999073ccbbf28e71bc34b952da993e82e0f48c15624a5b7076ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.326/magpie-cli-linux-amd64"
      sha256 "947873f4af781ef7989339dbc790891dbc331ae5a26f70e859e6796169c44bbd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
