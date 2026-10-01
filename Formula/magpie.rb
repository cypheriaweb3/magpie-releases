class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.586/magpie-cli-darwin-arm64"
      sha256 "4340f6bab5ad434213163789616ec4804d24e634a5b5a8cd51c732321ebba1d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.586/magpie-cli-darwin-amd64"
      sha256 "91c3d15b43c27b3628362b3c2d50a0157a763beaf68ecbc149a97516951bad7c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.586/magpie-cli-linux-arm64"
      sha256 "490695a309ef2d7ae432954b88ef41392e3c23be36b3a7f1046f80fc0091763a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.586/magpie-cli-linux-amd64"
      sha256 "0c646457c36a236f42a7db0d1257b3f582e4fa9279cb4c14db016974fa84a817"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
