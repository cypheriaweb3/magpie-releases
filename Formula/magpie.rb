class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.437/magpie-cli-darwin-arm64"
      sha256 "e2683ecbf39f6387118bbd547d2e645a43e7873ce96b12f3afbb029ec49a768d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.437/magpie-cli-darwin-amd64"
      sha256 "9fd7a6d7bb011d96216f8714d5c330df8da42732e942f7e4408cfd59acf8974f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.437/magpie-cli-linux-arm64"
      sha256 "f8eb08ba8258b081ac75486cef5af2954ae4a92bf4cf83881f2735be9f96de9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.437/magpie-cli-linux-amd64"
      sha256 "2859d0398d95e49274e84cd0a728f413823c58cb2c1e466c21614c47af720e78"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
