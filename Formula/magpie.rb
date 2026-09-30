class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.508/magpie-cli-darwin-arm64"
      sha256 "e65bdfc687173d952f21f999bdbc708ffd27d365ec64b4f880fe743f8e987656"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.508/magpie-cli-darwin-amd64"
      sha256 "28488e2445c8db9c1c18ff07def3f6ab67ece1faab5d53a8b70516f15842c3f2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.508/magpie-cli-linux-arm64"
      sha256 "2ea0597503f3c1ff0fec6ad621a0505034ef4da97cf8ed0a9c0f8e25bb93b747"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.508/magpie-cli-linux-amd64"
      sha256 "cebdecba1b5d86d09581bba255139735bef2ef9872f19f66171c1c73c4f53082"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
