class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.397/magpie-cli-darwin-arm64"
      sha256 "1b8adc1b65658dca348483721bfc3188a386fbdc62c0be38edaa1d3cafb4290d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.397/magpie-cli-darwin-amd64"
      sha256 "dd234251cbf91c5562c5a041ecc94557951be380f3d06df06b005e8d9531c79d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.397/magpie-cli-linux-arm64"
      sha256 "ca4cbc1fe79fdf9e72737a416db8354937e41dca7e344a19f628c4a5df20fe36"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.397/magpie-cli-linux-amd64"
      sha256 "5a4a50c423b8a908a6b2217b7822f772f99a3a2b58557255a15901bb1357a01a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
