class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.465/magpie-cli-darwin-arm64"
      sha256 "dc441b798f994c09143e4e0316940632001b9e8580d50609e79c1638b625c616"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.465/magpie-cli-darwin-amd64"
      sha256 "4c25af9fb862bfc248c4bf72dc76f8b2c7c9d69f02ba2a42114538baf49ec014"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.465/magpie-cli-linux-arm64"
      sha256 "2e66a8dcf47caa519ac9135aaea782e7c35cee50f95c60945c12fdc21cf04569"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.465/magpie-cli-linux-amd64"
      sha256 "ea29781f1318a6eef7efdaaae2d354443a40520f468430ac8197973049cded74"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
