class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.764/magpie-cli-darwin-arm64"
      sha256 "51b8d07f0f49908ad7dd3832f8889d982646ff21e51b1be8872d281c3b1033fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.764/magpie-cli-darwin-amd64"
      sha256 "5fcc8b35435330295e2491c0229532b10fe0fb7e331185e4180dd63bc3d02934"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.764/magpie-cli-linux-arm64"
      sha256 "1a9c93a3a34ed5c9464f0edfc5d72a8427231a26c96fd6d676a36807c59c4b62"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.764/magpie-cli-linux-amd64"
      sha256 "94199c99a7eddf05683508e4fca8e8b9bb00cfdd62aa801313cfe8b8d6ea07d0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
