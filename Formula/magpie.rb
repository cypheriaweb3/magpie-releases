class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.463/magpie-cli-darwin-arm64"
      sha256 "e510339d486996161c843b3021ac0915daaa2d5ccc9cc62659e76c342df310ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.463/magpie-cli-darwin-amd64"
      sha256 "a412ec5ca8cb0d9b45cfed33fab413b88439b741e4bf40a5d2f42addc2773d9c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.463/magpie-cli-linux-arm64"
      sha256 "b73ceeedba98c5dc669e777ad4ff9ea22b39b2471d173c58718a555e2a5d2161"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.463/magpie-cli-linux-amd64"
      sha256 "c24bc42c60ead3801365fa37db027281a70efd5abf8f13e6e7a4d693c31828ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
