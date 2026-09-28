class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.347/magpie-cli-darwin-arm64"
      sha256 "33df7d4485e1101ddf8e1643aa238d770421f2fd8909a404310ad16b27d141d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.347/magpie-cli-darwin-amd64"
      sha256 "4e7774d82091c2cb676c6edb29608ac4e4cd97a798421937eee7e043c91bf294"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.347/magpie-cli-linux-arm64"
      sha256 "4de8c58d25909a3e0262cb9ca88c6b8956469645173124c83b774dc90bbcd562"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.347/magpie-cli-linux-amd64"
      sha256 "f4c0a9c24214728d14442ed96b677c781900cc85499120848edb94e5ca628a6d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
