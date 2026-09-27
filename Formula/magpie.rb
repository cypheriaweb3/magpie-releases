class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.194/magpie-cli-darwin-arm64"
      sha256 "a9f505a8deededa85e5edadd153e5a9f20a1b1799bedf0a85c9d7af311bafc26"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.194/magpie-cli-darwin-amd64"
      sha256 "8c32962a5f81972a75bd491c3a68eac1b2172167a2e97ceb8e692b20b7fc1dd6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.194/magpie-cli-linux-arm64"
      sha256 "5ac78aa3134b23cbc84740fd74a77be4c96073b1d1bf7bee76e959895d688a26"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.194/magpie-cli-linux-amd64"
      sha256 "f75bd9ecd2539e81634479426eb4c40fb12547523ca2b2a90139653d1683e32e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
