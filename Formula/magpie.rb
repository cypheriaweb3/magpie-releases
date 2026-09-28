class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.297/magpie-cli-darwin-arm64"
      sha256 "60274a620cf5c30c9b7fd88d753b94d8ca55fc468370d1caf15c038981f6838c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.297/magpie-cli-darwin-amd64"
      sha256 "a7f6c777e6055670c40968c8fcbe84de8b80fae76f66b20117e771aeb3ac500a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.297/magpie-cli-linux-arm64"
      sha256 "d96c965a583380ffa8f158044b310b221b6edebdf8d34e6142ddddb6f5992aab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.297/magpie-cli-linux-amd64"
      sha256 "41cf14ab0bd468b5bbb93cf838fee4e5e279bd73e5312debde7cf2bb9a749d48"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
