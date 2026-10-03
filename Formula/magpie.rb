class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.706/magpie-cli-darwin-arm64"
      sha256 "e18dd0c643d329dbab3b5ee5fbf2e4f3626cb41d668181d505e676dfa5433bdf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.706/magpie-cli-darwin-amd64"
      sha256 "415e02e1eedfad2444d277052b49a6e76240874677295a6b04c2f6eed32ed9b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.706/magpie-cli-linux-arm64"
      sha256 "f98e28d5316e42b25817f93af191cb5625762da8fef7f4c453c19ad9e8e453ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.706/magpie-cli-linux-amd64"
      sha256 "3be4f28a49afb4d5c987a245bccd5f84e54a421e636ac3de0794c661cd3b471f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
