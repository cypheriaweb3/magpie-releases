class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.186/magpie-cli-darwin-arm64"
      sha256 "866d312c033b61c04892484b36a7b557401db8cad97454ea02c96b83be7c0b68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.186/magpie-cli-darwin-amd64"
      sha256 "cf470905895198466ff97eb07e194f6142398c66c4163836c281239ba10fdf5d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.186/magpie-cli-linux-arm64"
      sha256 "8d2dc41f4c7c3149cc541e62645ba490445c19bbd46645bba0d7595e254013df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.186/magpie-cli-linux-amd64"
      sha256 "e7c34f52cfab175c13414d9b923539029f2688dbc6e317a1f3fc24cc9148e92b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
