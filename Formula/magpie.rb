class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.701/magpie-cli-darwin-arm64"
      sha256 "b6f058fed350d874081725841910b676f0c7e98679cf3bc2dcdb852aea557953"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.701/magpie-cli-darwin-amd64"
      sha256 "a053085742852d641272968fa3f4ee423c7f566555be0956ea09e9774b117e31"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.701/magpie-cli-linux-arm64"
      sha256 "4a459275fddcce7037b3c5041b3f7d019cf4a63ab34dfe06d302a382e8bf46f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.701/magpie-cli-linux-amd64"
      sha256 "a3f9daf5797e91b5e62180d7ceb2ed6673fc93ff5421e700f3d3ec7441e1fd9e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
