class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.177/magpie-cli-darwin-arm64"
      sha256 "52fd9b56736083436d9d57e68d3db55fbb030a6904653b323af7e5c413471d08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.177/magpie-cli-darwin-amd64"
      sha256 "45774bcf29675778f40f71b79730c34c83bd8172cc01c6cfb6d09cd00e38b8db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.177/magpie-cli-linux-arm64"
      sha256 "c53db100a62addb8616bfdcdadc3f142e641a58890171bf31205fec1c4e6a157"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.177/magpie-cli-linux-amd64"
      sha256 "b96283a1641eaefb4722602122e7e7521671f653ca52302226843bfaec883565"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
