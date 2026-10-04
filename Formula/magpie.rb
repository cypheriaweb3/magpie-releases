class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.871/magpie-cli-darwin-arm64"
      sha256 "9b2a6f2192526e238a62a6b8d6046b0220f73020a8461cba8a02918c919529a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.871/magpie-cli-darwin-amd64"
      sha256 "5ab74c32ca2f48a4e4ae80024061e94b79fe6ce9d60af133934af1c77ac895b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.871/magpie-cli-linux-arm64"
      sha256 "dfea71f08403c60d8d374f82126436038d14574321b68b9da16dbcca0b522ec0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.871/magpie-cli-linux-amd64"
      sha256 "c86a51243895c7d98e2b37d3248529b382acccff20b561e43ce3d36c3c0c1ae4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
