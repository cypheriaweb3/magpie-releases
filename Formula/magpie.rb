class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.771/magpie-cli-darwin-arm64"
      sha256 "b0e5f2b73d8198bf7d61614d7de33f8b45f8b22255140ea350440d32c10fd4da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.771/magpie-cli-darwin-amd64"
      sha256 "0c83c917e60911428cf9326db2cf2a0cbc3293690f4a87adc5e9a8e390b4f2df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.771/magpie-cli-linux-arm64"
      sha256 "1ae177842d48df1baecd08f71d537dd77f0d01ca69637b8df98de9b2b0daf765"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.771/magpie-cli-linux-amd64"
      sha256 "70cd056038cf5a4004c862e797daa6845ad91a76529a4321b3fd5d373caa96f2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
