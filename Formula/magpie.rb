class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.413/magpie-cli-darwin-arm64"
      sha256 "c87a36fe0ec827ddded94b7b0a9c4191131eba25a63ddeb440d91369b15c5449"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.413/magpie-cli-darwin-amd64"
      sha256 "f45865aac5bcf9602f93420f1e624ce48bbadab1db9848d30e891af06c759c53"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.413/magpie-cli-linux-arm64"
      sha256 "2f929ce4dd78a599ae148dcf87c0f498c52e93d311c3abac3e3a665b355074b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.413/magpie-cli-linux-amd64"
      sha256 "e0acf9cc6db6a8b17ffa9bf59add16d3603e4fbd0e3d05e04a15b0b46e49fb10"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
