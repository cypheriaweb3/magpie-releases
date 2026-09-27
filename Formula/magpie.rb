class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.165/magpie-cli-darwin-arm64"
      sha256 "7f29676cfae8c79fa3e360435cdd0a2184240005909689e2e428bead1c8cf864"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.165/magpie-cli-darwin-amd64"
      sha256 "549920a116252396f360ea318357e701498265462ea32fce51380d1ba8021d7f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.165/magpie-cli-linux-arm64"
      sha256 "7c2074dea57d8df6a447de3791e0a75e9e8f48db5c6a74013b79cfca40eecd42"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.165/magpie-cli-linux-amd64"
      sha256 "babe80667632938adbb1a172e8992737d2d040edd9eb969668c235979b0ba85d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
