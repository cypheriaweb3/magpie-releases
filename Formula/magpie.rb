class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.386/magpie-cli-darwin-arm64"
      sha256 "084ab81ee5e232c30ef483c55fcc04a74ee2dcff356037c6c3b131edb9a822ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.386/magpie-cli-darwin-amd64"
      sha256 "2a26f0a3cb1f04ebe774cc26cdd19eff975bc7d77127236f25dd352d5182cf17"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.386/magpie-cli-linux-arm64"
      sha256 "0c8c796261a69019153fb8c6c47804bfe0468dafcdce1c553b36932ad3644962"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.386/magpie-cli-linux-amd64"
      sha256 "4ef55c8e083ae3591e42d3fdc8bc58036dcd915ef304a1a49ac6cc3ec41676af"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
