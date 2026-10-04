class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.855/magpie-cli-darwin-arm64"
      sha256 "078f5b8d754a27568d733baa0c0914428097b61b329df8bdc48b7b17d0dcf016"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.855/magpie-cli-darwin-amd64"
      sha256 "ba7f29e2661c0f9301e636e4fcfeacc11c6fd35ac21bc6f11d93e208bcacc9e7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.855/magpie-cli-linux-arm64"
      sha256 "46496e884ae45ea2ff2f8822aa44cec66f4c2ebab029b24fb55b8dc953ad8d10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.855/magpie-cli-linux-amd64"
      sha256 "f79df4bd90aa81371eff4386740b1fdcb557cf272d395494948c15b9f4f8ff10"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
