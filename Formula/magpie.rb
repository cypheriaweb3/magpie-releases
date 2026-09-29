class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.411/magpie-cli-darwin-arm64"
      sha256 "0e8993e522c4e1f241771bc7e45030e00369336f17698433f4acf24185af9eb7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.411/magpie-cli-darwin-amd64"
      sha256 "1c33913d7dfcf2a16d3adc589eb19a0faa97bd9ddcfb93f2561ac0ed022bc763"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.411/magpie-cli-linux-arm64"
      sha256 "b696f4166ee15445fc46e267a6d718caa73b13e6f04d6f62c5fcbdd5cc1bccf7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.411/magpie-cli-linux-amd64"
      sha256 "3515e1fb368fd835535d0dfa34c17bd48833dbe9266378aa33b54ed2b11da423"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
