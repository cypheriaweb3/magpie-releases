class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.267/magpie-cli-darwin-arm64"
      sha256 "2e7fb8254a33de0d15283af8372cdc3ff451280ddb931d9d807e02e61d6063f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.267/magpie-cli-darwin-amd64"
      sha256 "bd643b17e46f3868c4531c71c9838178978d68023d8dec6b163ea743c8725d01"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.267/magpie-cli-linux-arm64"
      sha256 "b6db8e224bd1eaa31b33889d811dd0e30fa162d065fa9745ecb8cfe22ae485b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.267/magpie-cli-linux-amd64"
      sha256 "f5a5731b0d2f392c522a617e16e1c5e077bd7848f3db6e6dfd37a304e5d74f48"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
