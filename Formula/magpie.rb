class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.511/magpie-cli-darwin-arm64"
      sha256 "8de5ed39ffcf96604cb69c36dd21e61956491abda38a672c33ed7786278c63a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.511/magpie-cli-darwin-amd64"
      sha256 "bb1b0e34f42930215eecb138a9f12d951c72bbb4a402bcd711461a1e19fb7021"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.511/magpie-cli-linux-arm64"
      sha256 "21c708beef0c5a2db177faaffc6d1c348e926a2f1b5a5c5cedce808fde54e639"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.511/magpie-cli-linux-amd64"
      sha256 "b07922fb4f96ecf997bf78f135c1d93da7f1298017917e7efeeb758368203f53"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
