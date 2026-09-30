class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.504/magpie-cli-darwin-arm64"
      sha256 "a1a77d6f584b901438f2ac6716067bdf15b2ab776b588331dc92b3a623c148c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.504/magpie-cli-darwin-amd64"
      sha256 "ae3bb3e34e05c565063143abec697afd73f4f8c8d5c7ac592558ba65e0e39c0a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.504/magpie-cli-linux-arm64"
      sha256 "f92e15dd00f8baec37893e7062cc2748d5182929c5193cb2596b8af0ef7af5bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.504/magpie-cli-linux-amd64"
      sha256 "62fa7a2ed5cd45cbf289a8ad881d7e4ab519c69e3316028825510c3527fe923e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
