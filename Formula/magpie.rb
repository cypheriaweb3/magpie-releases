class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.237/magpie-cli-darwin-arm64"
      sha256 "e98ad02b04fe770c23e84d917cf691ad82179f92f83562c72c62afc860503936"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.237/magpie-cli-darwin-amd64"
      sha256 "f93c604978b6d8a210e5d335cb452f92a3610eae86ab9764df67763cdeccbbab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.237/magpie-cli-linux-arm64"
      sha256 "c47541e041a25d9c625f4fe8be4d2e17def2dd300f4a51efb1a1b80cba9f911e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.237/magpie-cli-linux-amd64"
      sha256 "2fa796de5298eefd5cbf41b157ea0ef8623b87ccde7f7f6c4915ac20739efec4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
