class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.344/magpie-cli-darwin-arm64"
      sha256 "9d67004ccff2f297812866ac188f8168606cc1c4e1f50024ca65351207f53856"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.344/magpie-cli-darwin-amd64"
      sha256 "ef338371ada5717b8cd3802462b0285ca225be4dfbfc1ccb09871f3758a0b11b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.344/magpie-cli-linux-arm64"
      sha256 "2fb65e90e72c4627ea8b8f7460628e99d68de49282f66b02f0e5063a57a560c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.344/magpie-cli-linux-amd64"
      sha256 "2cf029dec600503859c7278bd79608a687f88fd8ddf05e241e46b908d6985d40"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
