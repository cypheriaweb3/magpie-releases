class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.613/magpie-cli-darwin-arm64"
      sha256 "46fad3f90eff08c5c9aac703f324da6d1f7847e4e7f97957ecefa863adfd22b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.613/magpie-cli-darwin-amd64"
      sha256 "0cc017f571b7943f59b7b820a01c962ee4a05660dbd3981b1b0107d2e1d7f356"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.613/magpie-cli-linux-arm64"
      sha256 "fe0239e8cb6d85b8eccb0bb2574190aafc41b45e20accb33de7515241f50c19d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.613/magpie-cli-linux-amd64"
      sha256 "56a4b02612661a378f8321e2d4e8d93e1b1c6e433fc6798888f526b3846d4eeb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
