class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.493/magpie-cli-darwin-arm64"
      sha256 "38dcf534763d1bd2f2a7a2275778912afcef0c28604a657b69be5fcc8365bbc4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.493/magpie-cli-darwin-amd64"
      sha256 "f4ce8a02045c65b20b35bfa02bb133752338863c10554a1f881984a49d0f6b8e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.493/magpie-cli-linux-arm64"
      sha256 "59c0c3e2ebdec13142c48aab706945dab37cf7dd877e06b286ca1e0963a42dae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.493/magpie-cli-linux-amd64"
      sha256 "5e4041465804e496aac78f055fefe19f873f188009615e7fe7a271b69feaedb6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
