class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.158/magpie-cli-darwin-arm64"
      sha256 "fe560ecc0bd13648b0f5a6f93d19d05308616fff6875311a0dc8ef6e0cb63121"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.158/magpie-cli-darwin-amd64"
      sha256 "5739b93ab8324ed474dc68b5a1eb5f6f55f1e42ab5c1df4279cf11724789e2ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.158/magpie-cli-linux-arm64"
      sha256 "25cfb77e27e3d561f714b7fff30c6a705492abe6bb3866b04c906493285d2832"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.158/magpie-cli-linux-amd64"
      sha256 "20469d9d3b464a6e49d96bcc9aa681ca5f6614cab57b190df267437ec4f0011e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
