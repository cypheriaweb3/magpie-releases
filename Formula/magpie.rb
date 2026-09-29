class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.426/magpie-cli-darwin-arm64"
      sha256 "a65e2a81807b8242c24fdd26dbaaf2b9561e3c6629e67ecc680b3c2615d55c66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.426/magpie-cli-darwin-amd64"
      sha256 "514b958dba8a21d5e8d2acaac3c6a821e1515b58bf6e733143f682d90665fca9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.426/magpie-cli-linux-arm64"
      sha256 "0def1e7f4aba80029af55b0bf9676479edf083d61fd8b08801b44502d6c0d095"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.426/magpie-cli-linux-amd64"
      sha256 "ed8d89b35d1e055827cc6f7b92a8b12de07e4897cde631af1527c92c28973d72"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
