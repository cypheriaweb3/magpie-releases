class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.480/magpie-cli-darwin-arm64"
      sha256 "37aa1be7007a7c5edf4a291a895f81477e8d932381d01f81005354ff3084bcfa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.480/magpie-cli-darwin-amd64"
      sha256 "16fbc3e77b92ecbd3a85862a1b8d2051fae5f6d1badeaaceb47f1d9acc63af3e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.480/magpie-cli-linux-arm64"
      sha256 "dce2862dfa7639feb354223ce1b661cd4eae7a4b0ff0a808ad76616d76c69fdb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.480/magpie-cli-linux-amd64"
      sha256 "9ce893a05e63611d53ced816adbdc7705c8618c806d1db8fb74e49f736be2e96"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
