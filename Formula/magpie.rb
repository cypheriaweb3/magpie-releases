class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.221/magpie-cli-darwin-arm64"
      sha256 "cb66f77d1ba01d0951d3bcb7fe90aac9d308ba956c45b543cb61b9bb2d5b3265"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.221/magpie-cli-darwin-amd64"
      sha256 "6d0820330332320454d1d6d9e3317dd2b80466d68bc161302805d18549444038"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.221/magpie-cli-linux-arm64"
      sha256 "f25949b82965c889443084b1bc60c14554ad1c0e949cf8f126b55beee744c0b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.221/magpie-cli-linux-amd64"
      sha256 "c8f1e85b3a62c79cdaa4b005f5b79919d2a195dc671cc923a19c07d236941505"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
