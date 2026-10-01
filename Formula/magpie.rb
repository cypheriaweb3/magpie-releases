class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.595/magpie-cli-darwin-arm64"
      sha256 "51ee36b0922b27eb4c2c102d5796315d248d4c4ed6b28062b7a2b9ff37b9e480"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.595/magpie-cli-darwin-amd64"
      sha256 "97107d543c535bfeed9d69ee088c3fc45182c199f63e342a1c487a0f9caa0529"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.595/magpie-cli-linux-arm64"
      sha256 "9209d9894aabf2edc81d395296e2fc23d9b44ad5051baaf6a257701b475edce2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.595/magpie-cli-linux-amd64"
      sha256 "5d77ea507dd416eab5d369ac2c8d383d38fd5cd76c705f06dab172110b0cdca4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
