class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.692/magpie-cli-darwin-arm64"
      sha256 "0925aa488de19a2e351ac271086359dcebb49b11b6f4a518b5052b566f26ac06"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.692/magpie-cli-darwin-amd64"
      sha256 "dc663315ebc5951b9d5fed3054448342dd1c0c0fc753271dad2dad81153fa0d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.692/magpie-cli-linux-arm64"
      sha256 "6adcadd212e3f64e853948305e88c7188d2b861ccc67a84a8ebe9192b43fbb6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.692/magpie-cli-linux-amd64"
      sha256 "83fcb35332841336a87f365bc662818c785e271bf437f314dd5f6809d932fecf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
