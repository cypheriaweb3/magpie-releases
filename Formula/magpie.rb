class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.838/magpie-cli-darwin-arm64"
      sha256 "8af249c44d46d58341f36779edb11ad371932e0050321373e00f5d33df70fd26"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.838/magpie-cli-darwin-amd64"
      sha256 "83a217ecd632babc89f861fda63b292629e4a621ca0b7c11358c2c8743c90b8c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.838/magpie-cli-linux-arm64"
      sha256 "fa8a1aaec463ce6599c8c52b0325f06d1243a24cdc5c92f0f89a95429bcb53df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.838/magpie-cli-linux-amd64"
      sha256 "344dc4ee2a74f13b81de2629674522d436a256acac2db210675c00983f8d6105"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
