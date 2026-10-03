class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.779/magpie-cli-darwin-arm64"
      sha256 "4c63ab7f55c8f4ec0808a6e8ee12fd8263f6f02a211518afd7fb895b253f0127"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.779/magpie-cli-darwin-amd64"
      sha256 "02ab5ea00d5aa166809a417fd08d75a50f730f5669da6d3ba95d7cf5dc3fc1be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.779/magpie-cli-linux-arm64"
      sha256 "c95ed985454be870d313e7eebac57952f7dc109d13bbd1f5c37e30df8d6db8a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.779/magpie-cli-linux-amd64"
      sha256 "45fc308ffffd8458a915dc10620440afb3d0412533a54dfdf95066870d9f3476"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
