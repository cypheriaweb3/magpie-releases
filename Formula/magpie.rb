class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.201/magpie-cli-darwin-arm64"
      sha256 "d0f0dc7ae18b69c5e446fe1dc9e880fdb8076938b4892d263c81ad76f60212f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.201/magpie-cli-darwin-amd64"
      sha256 "2b89be990e571a966df1b9e5843885f9e0fa853ff78f8161c2f76a61a3272b59"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.201/magpie-cli-linux-arm64"
      sha256 "7dd575ce01fd40590196e44ce08e15b79ebf52228f7d0c9da9f09e2a4cf474f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.201/magpie-cli-linux-amd64"
      sha256 "49a617a8a090612d80bb7cecedcd75d433014779c05500d4c710726c818e8672"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
