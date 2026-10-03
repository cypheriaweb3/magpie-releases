class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.775/magpie-cli-darwin-arm64"
      sha256 "5bfe0a779869cc1e3a171f278c0698a2fe4916303fc75abc93d4ba4a2c9fe75b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.775/magpie-cli-darwin-amd64"
      sha256 "f0862a3621bba2644a9eb513f422c81345095541541d24187e2b260d5a5519f7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.775/magpie-cli-linux-arm64"
      sha256 "5ce1fc2c4d5e0eef343e52e92e466345ff234f02bea4c110c68ccdc2ac291565"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.775/magpie-cli-linux-amd64"
      sha256 "43bd9bad7db4d336f827dd76615275fb96ccd5a1a9f9ad9dd1bddf450801f08f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
