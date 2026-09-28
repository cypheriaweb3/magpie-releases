class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.280/magpie-cli-darwin-arm64"
      sha256 "253c7e73ad1f359233cba10eec88d261182d5fa716883c0d9df5c866bb889224"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.280/magpie-cli-darwin-amd64"
      sha256 "186a58cdfaa8a0a9e534ac6cf3991d3df181d59aab24257cc0bc8c7afab8e09b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.280/magpie-cli-linux-arm64"
      sha256 "13c09165ccfe0307aaae6d9507dab76118a04aae05accd5c733977952f53daea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.280/magpie-cli-linux-amd64"
      sha256 "6807cffcabd650ea3f3f9d19eb16f7ef6f6f5eece2f7848c3667e0609f896f07"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
