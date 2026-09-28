class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.338/magpie-cli-darwin-arm64"
      sha256 "60eb9efd61ba62791a88acc5c6cfd3fa249e5cb8cdb59e3586be205f150124b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.338/magpie-cli-darwin-amd64"
      sha256 "2f49757ff47b174188a69c7c6db80d5ff3402d9f05c02377e8b2037922e16ba0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.338/magpie-cli-linux-arm64"
      sha256 "128bfa6653622ed48eb18867ee63c06a69ae75a344b436e318e261746c90e07a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.338/magpie-cli-linux-amd64"
      sha256 "2e672f68567893a234d0ce3ede8aacf038374d29a190cb2fc0cda0dfba07dd45"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
