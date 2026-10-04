class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.876/magpie-cli-darwin-arm64"
      sha256 "692a1476808ffe3abd28beb4e2e78c384ebb142b802f36ef90022ed9fa1fca5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.876/magpie-cli-darwin-amd64"
      sha256 "09fb25702bead0b530b43d8ec2f24cdaba9d4b29f221bdd514e49c375d20c037"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.876/magpie-cli-linux-arm64"
      sha256 "099f215444d627bf992053dc762e165013e9b626c2e24b67b3afc55a6629e3bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.876/magpie-cli-linux-amd64"
      sha256 "aa36a6199259783fc84cfe397eebcfacdfb8b35412efffc56d32df284b34cfae"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
