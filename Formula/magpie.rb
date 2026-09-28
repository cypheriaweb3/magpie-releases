class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.238/magpie-cli-darwin-arm64"
      sha256 "6edee0ec6021def892e0e7a2f21958da908550b1311833110f0abc0dcea237f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.238/magpie-cli-darwin-amd64"
      sha256 "0513c65efa52999dedfc92badcc3746d2d558c6f33432c9c39d3fede31395861"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.238/magpie-cli-linux-arm64"
      sha256 "ed908e4595350fea712e23fc603543ea8c1ca0282b94f00431482b3be604c412"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.238/magpie-cli-linux-amd64"
      sha256 "68b068911ed4ec2bbf127bbded31b3b52883e5b54a84458ddd2e6279109dd0d2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
