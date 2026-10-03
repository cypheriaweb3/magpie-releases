class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.725/magpie-cli-darwin-arm64"
      sha256 "833f6c16c4a790218ee5d93a20f5995a6e72de534f598e45abe13c7f8667a4ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.725/magpie-cli-darwin-amd64"
      sha256 "53b35124d18dcdb6c3ba14323f90d65260ac46a63d49e8fae846c3611ecb0e55"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.725/magpie-cli-linux-arm64"
      sha256 "e74b423fab07ea7d790ed7d3e8c328a6ba55c6d2a6123aaab9d5dbdcbe6c79e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.725/magpie-cli-linux-amd64"
      sha256 "a3f1ecee817a8ce784a8a85bd719d1eb23b0b80ab7e178caf08f76be6370d20c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
