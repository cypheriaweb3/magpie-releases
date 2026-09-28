class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.253/magpie-cli-darwin-arm64"
      sha256 "236071738ab74a2e773392492e38524df0223ff8c71bc4cd423ed920f3160b24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.253/magpie-cli-darwin-amd64"
      sha256 "eda91734c8cec48e5e12b19a79b05a0bae6fbef756c6527806d4c9d4b1e309e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.253/magpie-cli-linux-arm64"
      sha256 "2de1793854bbb843a100cbe06d2debba25cb2d232dc5f82d932a474575142332"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.253/magpie-cli-linux-amd64"
      sha256 "ed4b0e664caddd7688c2c446c4316419cee50a516616228d07e3184ab6dc823c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
